{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 173.0, 218.0, 697.0, 518.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 204.083313, 137.0, 140.0, 23.0 ],
					"style" : "",
					"text" : "conformpath max boot"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.083313, 170.5, 183.0, 20.0 ],
					"style" : "",
					"text" : "sprintf read %s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.083313, 252.0, 58.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.0, 37.75, 52.0, 18.0 ],
					"style" : "",
					"text" : "set path",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-12",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.083313, 215.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.333313, 69.0, 54.0, 23.0 ],
					"style" : "",
					"text" : "depth 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.439216, 0.74902, 0.254902, 0.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.333313, 11.0, 45.0, 18.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 335.25, 157.5, 38.0, 29.0 ],
					"style" : "",
					"text" : "buttom "
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.333313, 34.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Drop folder here !",
					"applycolors" : 1,
					"autopopulate" : 1,
					"depth" : 2,
					"fontsize" : 10.0,
					"hint" : "here !",
					"id" : "obj-28",
					"items" : [ "oced_francais", ",", "oced_francais/education", ",", "oced_francais/education/Low-achieving_students_Mathematics.tsv", ",", "oced_francais/education/Low-achieving_students_Reading.tsv", ",", "oced_francais/education/Low-achieving_students_Science.tsv", ",", "oced_francais/education/Top_performers_Mathematics.tsv", ",", "oced_francais/education/Top_performers_Reading.tsv", ",", "oced_francais/education/Top_performers_Science.tsv", ",", "oced_francais/emploi", ",", "oced_francais/emploi/Ecart_salarial_entre_femmes_et_hommes.tsv", ",", "oced_francais/emploi/Part_de_l_emploi_dans_l_agriculture_par_sexe_.tsv", ",", "oced_francais/emploi/Part_de_l_emploi_dans_l_industrie_par_sexe.tsv", ",", "oced_francais/emploi/Part_de_l_emploi_dans_les_services_par_sexe.tsv", ",", "oced_francais/emploi/Part_des_employes_a_temps_partiel_par_sexe_et_groupe_d_age.tsv", ",", "oced_francais/emploi/Part_des_employes_cadres_superieurs_par_sexe.tsv", ",", "oced_francais/emploi/Part_des_employes_temporaires_par_sexe.tsv", ",", "oced_francais/emploi/Part_des_femmes_dans_l_emploi_public.tsv", ",", "oced_francais/emploi/Part_des_femmes_dans_l_emploi_total.tsv", ",", "oced_francais/emploi/Part_des_sieges_occupes_par_des_femmes_dans_les_parlements_nationaux.tsv", ",", "oced_francais/emploi/Taux_d_activite_par_sexe_et_groupe_d_age.tsv", ",", "oced_francais/emploi/Taux_de_chomage_par_sexe_et_groupe_d_age.tsv", ",", "oced_francais/entreprenariat", ",", "oced_francais/entreprenariat/Attitude_envers_le_risque_entrepreneurial.tsv", ",", "oced_francais/entreprenariat/L_acces_a_l_argent_pour_demarrer_une_entreprise.tsv", ",", "oced_francais/entreprenariat/L_acces_a_la_formation_a_la_creation_d_entreprise_.tsv", ",", "oced_francais/entreprenariat/Part_de_femmes_inventrices.tsv", ",", "oced_francais/entreprenariat/Part_de_la_population_avec_un_compte_dans_une_institution_financiere.tsv", ",", "oced_francais/entreprenariat/Part_de_la_population_qui_declare_emprunter_de_l_argent_pour_demarrer_une_entreprise.tsv", ",", "oced_francais/entreprenariat/Part_des_entreprises_a_proprietaire_unique_appartenant_a_des_femmes.tsv", ",", "oced_francais/entreprenariat/Part_des_personnes_en_emploi_etant_employeurs.tsv", ",", "oced_francais/entreprenariat/Part_des_personnes_en_emploi_travaillant_a_leur_compte.tsv", ",", "oced_francais/entreprenariat/Part_des_travailleurs_independants_ayant_moins_de_30_ans.tsv", ",", "oced_francais/entreprenariat/Part_des_travailleurs_independants_dans_le_secteur_manufacturier_ou_la_construction.tsv", ",", "oced_francais/entreprenariat/Part_des_travailleurs_independants_dans_les_services.tsv", ",", "oced_francais/entreprenariat/Part_des_travailleurs_independants_parmi_les_diplomes_de_l_enseignement_tertiaire_ayant_un_emploi.tsv", ",", "oced_francais/entreprenariat/Part_des_travailleurs_independants_parmi_les_personnes__de_moins_de_30_ans_ayant_un_emploi.tsv", ",", "oced_francais/entreprenariat/Part_des_travailleurs_independants_parmi_les_personnes_de_nationalite_etrangere_ayant_un_emploi.tsv", ",", "oced_francais/entreprenariat/Preferences_pour_le_travail_independant.tsv" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 31.333313, 98.0, 364.5, 20.0 ],
					"pattrmode" : 1,
					"prefix" : "Macintosh HD:/Users/Kourouk/Music/Session_en_Cours_MAcPro/Z2_Glass_Ceilings_Nanterre_V1_Project/agora/data/m4l/",
					"presentation" : 1,
					"presentation_rect" : [ 8.875, 37.75, 364.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "umenu",
							"parameter_shortname" : "umenu",
							"parameter_type" : 3,
							"parameter_initial" : [ "audiens/audiens_effectifis_2010.tsv" ],
							"parameter_invisible" : 1,
							"parameter_annotation_name" : "menu"
						}

					}
,
					"style" : "",
					"truncate" : 2,
					"varname" : "umenu"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-28" : [ "umenu", "umenu", 0 ]
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
