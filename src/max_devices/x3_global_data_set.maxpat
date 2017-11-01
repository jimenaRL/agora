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
		"rect" : [ 196.0, 214.0, 980.0, 516.0 ],
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
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.416687, 432.5, 101.0, 18.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 290.0, 82.75, 52.0, 40.0 ],
					"style" : "",
					"text" : "query line numbers",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.416687, 391.5, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 257.416687, 331.5, 19.0, 20.0 ],
					"style" : "",
					"text" : "b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.416687, 359.5, 47.0, 23.0 ],
					"style" : "",
					"text" : "query"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.416626, 225.5, 470.0, 35.0 ],
					"style" : "",
					"text" : "read /Users/Kourouk/Music/Session_en_Cours_MAcPro/Z2_Glass_Ceilings_Nanterre_V1_Project/agora/data/m4l/oced_francais/entreprenariat/Preferences_pour_le_travail_independant.tsv"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-13",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.416626, 185.5, 470.0, 35.0 ],
					"style" : "",
					"text" : "read /Users/Kourouk/Music/Session_en_Cours_MAcPro/Z2_Glass_Ceilings_Nanterre_V1_Project/agora/data/m4l/oced_francais/emploi/Part_des_employes_temporaires_par_sexe.tsv"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-10",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.416626, 146.5, 470.0, 35.0 ],
					"style" : "",
					"text" : "read /Users/Kourouk/Music/Session_en_Cours_MAcPro/Z2_Glass_Ceilings_Nanterre_V1_Project/agora/data/m4l/oced_francais/education/Low-achieving_students_Mathematics.tsv"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.833313, 392.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 530.333313, 174.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 147.833313, 391.5, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-24",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "global_data_set.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.0, -98.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.833313, 50.375, 372.0, 20.875 ],
					"presentation" : 1,
					"presentation_rect" : [ -3.125, 42.5, 364.0, 21.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.043137, 0.364706, 0.094118, 1.0 ],
					"fontsize" : 8.0,
					"id" : "obj-28",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1.416626, 44.8125, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.875, 24.625, 25.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "data_control[2]",
							"parameter_shortname" : "data_control",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "C",
					"texton" : "on",
					"transition" : 2,
					"varname" : "data_control[2]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-20",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "global_data_set.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.0, -98.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.833313, 22.9375, 372.0, 20.875 ],
					"presentation" : 1,
					"presentation_rect" : [ -3.125, 20.75, 364.0, 21.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"fontsize" : 8.0,
					"id" : "obj-22",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1.416626, 23.375, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.875, 46.375, 25.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "data_control[1]",
							"parameter_shortname" : "data_control",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "B",
					"texton" : "on",
					"transition" : 2,
					"varname" : "data_control[1]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-16",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "global_data_set.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.0, -98.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.833313, 0.5, 372.0, 20.875 ],
					"presentation" : 1,
					"presentation_rect" : [ -3.125, -1.0, 364.0, 21.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"fontsize" : 8.0,
					"id" : "obj-27",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1.416626, 1.375, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.875, 2.875, 25.0, 14.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "data_control",
							"parameter_shortname" : "data_control",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"texton" : "on",
					"transition" : 2,
					"varname" : "data_control"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 530.333313, 214.5, 37.0, 17.0 ],
					"style" : "",
					"text" : "depth 2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 10.916626, 307.0, 157.333313, 307.0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 10.916626, 273.0, 266.916687, 273.0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 10.916626, 305.5, 157.333313, 305.5 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 10.916626, 275.5, 266.916687, 275.5 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 10.916626, 308.5, 157.333313, 308.5 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 10.916626, 274.5, 266.916687, 274.5 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"midpoints" : [ 48.333313, 140.4375, 461.916626, 140.4375 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 48.333313, 139.15625, 461.916626, 139.15625 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 10.916626, 90.1875, 379.333313, 90.1875 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"midpoints" : [ 48.333313, 147.875, 461.916626, 147.875 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 10.916626, 91.1875, 379.333313, 91.1875 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 10.916626, 90.90625, 379.333313, 90.90625 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 539.833313, 241.5, 488.083313, 241.5, 488.083313, 38.5, 48.333313, 38.5 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 539.833313, 241.5, 487.083313, 241.5, 487.083313, 39.9375, 48.333313, 39.9375 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 539.833313, 241.5, 488.083313, 241.5, 488.083313, 39.375, 48.333313, 39.375 ],
					"order" : 2,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-28" : [ "data_control[2]", "data_control", 0 ],
			"obj-22" : [ "data_control[1]", "data_control", 0 ],
			"obj-27" : [ "data_control", "data_control", 0 ],
			"obj-24::obj-28" : [ "umenu", "umenu", 0 ],
			"obj-20::obj-28" : [ "umenu[1]", "umenu", 0 ],
			"obj-16::obj-28" : [ "umenu[2]", "umenu", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "global_data_set.maxpat",
				"bootpath" : "~/Music/Session_en_Cours_MAcPro/Z2_Glass_Ceilings_Nanterre_V1_Project/agora/src/max_devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
