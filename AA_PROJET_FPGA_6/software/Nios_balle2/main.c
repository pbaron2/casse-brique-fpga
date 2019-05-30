#include <stdio.h>
#include "io.h"
#include "system.h"
#include <math.h>



char askBrickMemory(int px_x, int px_y);


int main()
{
	IOWR(EN_NIOS_BASE,0,0);
	IOWR(PERDU_BASE,0,0);
	IOWR(ADR_BRIQUE_BASE, 0, 511);

	float position_x = 315;
	float position_y = 440;
	float vitesse_x = -8;
	float vitesse_y = -3;
	float vitesse;

	// Ecriture de la position initiale de la balle
	IOWR(X_POSITION_BASE,0,(int) position_x);
	IOWR(Y_POSITION_BASE,0,(int) position_y);



	while (1)
	{
		// Si enable
		if(IORD(EN_BASE,0))
		{
			//printf("x:%f, y:%f\n",position_x,position_y);

			// Calcul norme de la vitesse
			vitesse = sqrt((vitesse_x)*(vitesse_x)+(vitesse_y)*(vitesse_y));

			// Lecture position raquette (en px)
			int pos_raquette = IORD(POS_RAQUETTE_BASE,0);
/*
			printf("x : %f\n", position_x);
			printf("y : %f\n", position_y);
			printf("vx : %f\n", vitesse_x);
			printf("vy : %f\n\n", vitesse_y);
*/
			//printf("OK");
			// Décomposition de la trajectoire en déplacements élémentaires
			for (int i=0; i<vitesse; i++)
			{

				// Déplacement élémentaire
				position_x += (vitesse_x / (vitesse));
				position_y += (vitesse_y / (vitesse));

				int pos_avant;
				if (((int) position_y) == 430)
				{
					pos_avant = pos_raquette;
				}

				// Rebond raquette
				if (position_y >= 440)
				{
					// Haut
					if (position_y <= 460 && position_x >= pos_raquette &&  (position_x + 20) <= (pos_raquette + 120) && vitesse_y > 0)
					{
						//if (position_x > pos_raquette + 70)

							float vitesse_x_temp = vitesse_x + 0.05*(pos_raquette- pos_avant);
							float vitesse_y_temp = - sqrt(vitesse*vitesse-vitesse_x_temp*vitesse_x_temp);
							if (fabs(vitesse_x_temp) < (vitesse - 0.5) && fabs(vitesse_y_temp) < (vitesse - 0.5))
							{
								vitesse_x = vitesse_x_temp;
								vitesse_y = vitesse_y_temp;
							}
							else
							{
								vitesse_y = - fabs(vitesse_y);
							}

						/*else if (position_x < pos_raquette + 30)
						{
							float vitesse_x_temp = vitesse_x + 0.05*(position_x - pos_raquette - 30);
							float vitesse_y_temp = sqrt(vitesse*vitesse-vitesse_x_temp*vitesse_x_temp);
							if (fabs(vitesse_x_temp) < (vitesse-1) && fabs(vitesse_y_temp) < (vitesse-1))
							{
								vitesse_x = vitesse_x_temp;
								vitesse_y = vitesse_y_temp;
							}
							else
							{
								vitesse_y = - fabs(vitesse_y);
							}
						}
						else
						{
							vitesse_y = - fabs(vitesse_y);
						}*/

					}

					// Droite
					if (((int) position_x) == pos_raquette + 120)
					{
						vitesse_x = fabs(vitesse_x);
					}

					// Gauche
					if ((((int) position_x) + 20) == pos_raquette)
					{
						vitesse_x = (-fabs(vitesse_x));
					}
				}

				// Haut
				if (position_y <= 0)
				{
					vitesse_y = fabs(vitesse_y) ;
				}

				// Bas
				else if(position_y >= 480)
				{
					IOWR(PERDU_BASE,0,1) ;
					IOWR(PERDU_BASE,0,0) ;


					//vitesse_y = -fabs(vitesse_y) ;
				}

				// Gauche
				else if (position_x <= 0)
				{
					vitesse_x = fabs(vitesse_x) ;
				}

				// Droite
				else if (position_x >= 620)
				{
					vitesse_x = -fabs(vitesse_x) ;
				}


				// Gestion Briques
				else if (position_y < 300)
				{

					// Detection par les points centraux des arretes de la balle

					// Haut de la balle
					if(!askBrickMemory((int) position_x + 10, (int) position_y))
					{
						vitesse_y = fabs(vitesse_y);
					}

					// Bas de la balle
					else if(!askBrickMemory((int) position_x + 10, (int) position_y + 20))
					{
						vitesse_y = -fabs(vitesse_y);
					}

					// Gauche de la balle
					else if(!askBrickMemory((int) position_x, (int) position_y + 10))
					{
						vitesse_x = fabs(vitesse_x);
					}

					// Droite de la balle
					else if(!askBrickMemory((int) position_x + 20, (int) position_y + 10))
					{
						vitesse_x = -fabs(vitesse_x);
					}


					// Detection par les angles de la balle

					// Haut Gauche
					else if(!askBrickMemory((int) position_x + 3, (int) position_y + 3))
					{
						if(vitesse_x < 0 && vitesse_y < 0)
						{
							vitesse_x = fabs(vitesse_x);
							vitesse_y = fabs(vitesse_y);
						}
						else
						{
							vitesse_x = fabs(vitesse_x);
						}
					}

					// Haut Droit
					else if(!askBrickMemory((int) position_x + 17, (int) position_y + 3))
					{
						if(vitesse_x > 0 && vitesse_y < 0)
						{
							vitesse_x = -fabs(vitesse_x);
							vitesse_y = fabs(vitesse_y);
						}
						else
						{
							vitesse_x = -fabs(vitesse_x);
						}
					}

					// Bas Gauche
					else if(!askBrickMemory((int) position_x + 3, (int) position_y + 17))
					{
						if(vitesse_x < 0 && vitesse_y > 0)
						{
							vitesse_x = fabs(vitesse_x);
							vitesse_y = -fabs(vitesse_y);
						}
						else
						{
							vitesse_y = -fabs(vitesse_y);
						}
					}

					// Bas Droit
					else if(!askBrickMemory((int) position_x + 17, (int) position_y + 17))
					{
						if(vitesse_x > 0 && vitesse_y > 0)
						{
							vitesse_x = -fabs(vitesse_x);
							vitesse_y = -fabs(vitesse_y);
						}
						else
						{
							vitesse_y = -fabs(vitesse_y);
						}
					}



					// Detection par les arêtes de briques
					/*
					// Haut de balle
					if (((int) position_y+1) % 40 == 0)
					{
						if (vitesse_y<0)
						{
							if (!askBrickMemory(position_x + 10, position_y))
							{
								vitesse_y = - vitesse_y;
							}
							else if (!askBrickMemory(position_x, position_y )){
								vitesse_y = - vitesse_y;
							}
							else if (!askBrickMemory(position_x + 20, position_y)){
								vitesse_y = - vitesse_y;
							}
						}
					}

					// Gauche de balle
					else if ( ((int) position_x+1) % 80 == 0)
					{
						if (vitesse_x<0)
						{
							if (!askBrickMemory(position_x, position_y + 10))
							{
								vitesse_x = - vitesse_x;
							}
							else if (!askBrickMemory(position_x, position_y )){
								vitesse_x = - vitesse_x;
							}
							else if (!askBrickMemory(position_x, position_y + 20)){
								vitesse_x = - vitesse_x;
							}
						}
					}

					// Bas de balle
					else if ((((int) position_y) + 20) % 40 == 0 && position_y+20 <320)
					{
						if (vitesse_y>0)
						{
							if (!askBrickMemory(position_x + 10, position_y +20))
							{
								vitesse_y = - vitesse_y;
							}
							else if (!askBrickMemory(position_x, position_y +20 )){
								vitesse_y = - vitesse_y;
							}
							else if (!askBrickMemory(position_x + 20, position_y + 20)){
								vitesse_y = - vitesse_y;
							}
						}
					}

					// Droite de balle
					else if ((((int) position_x) + 20) % 80 == 0)
					{
						if (vitesse_x>0)
						{
							if (!askBrickMemory(position_x +20, position_y + 10))
							{
								vitesse_x = - vitesse_x;
							}
							else if (!askBrickMemory(position_x + 20, position_y )){
								vitesse_x = - vitesse_x;
							}
							else if (!askBrickMemory(position_x +20, position_y + 20)){
								vitesse_x = - vitesse_x;
							}
						}
					}
*/

				}

			} // End For(vitesse)

			// Ecriture de la nouvelle position de la balle
			IOWR(X_POSITION_BASE,0,(int) position_x);
			IOWR(Y_POSITION_BASE,0,(int) position_y);

			// Impulsion pour signaler la fin de l'actualisation de la position
			IOWR(FINCALCUL_BASE,0,1);
			IOWR(FINCALCUL_BASE,0,0);

	  } // End If(en)
	} // End While(1)
} // End main


// Retourne un booléen indiquant si la brique présente au pixel (px_x, px_y) est morte
char askBrickMemory(int px_x, int px_y)
{
	IOWR(EN_NIOS_BASE, 0, 1);
	IOWR(ADR_BRIQUE_BASE, 0, (px_x / 80) + 8 * (px_y / 40));
	char br_morte = IORD(BRIQUE_MORTE_BASE, 0);
	IOWR(EN_NIOS_BASE, 0, 0);
	return br_morte;
}
