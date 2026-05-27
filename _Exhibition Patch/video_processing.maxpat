{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 154.0, 114.0, 1212.0, 663.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 761.0, 91.0, 208.0, 22.0 ],
					"text" : "jit.slide @slide_up 5 @slide_down 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 664.0, 131.0, 96.0, 20.0 ],
					"text" : "Rutt/Etra"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-30",
					"index" : 3,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1026.0, 707.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "dim",
					"id" : "obj-29",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1035.0, 46.840000000000003, 227.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1026.0, 638.0, 50.5, 22.0 ],
					"text" : "jit.pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 1026.0, 598.0, 61.0, 22.0 ],
					"text" : "jit.unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1026.0, 558.0, 68.0, 22.0 ],
					"text" : "jit.multiplex"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 762.0, 674.0, 68.0, 22.0 ],
					"text" : "jit.multiplex"
				}

			}
, 			{
				"box" : 				{
					"attr" : "amt",
					"id" : "obj-23",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1001.0, 85.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"code" : "out1 = in1;\r\nout2 = nearestpix(in1, cell + vec(1, 0),\r\n\t\t\t\t  boundmode = \"clamp\");",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "jit.gen.codebox",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 1026.0, 447.0, 338.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"code" : "out1 = in1;\r\nout2 = nearestpix(in1, cell + vec(1, 0),\r\n\t\t\t\t  boundmode = \"clamp\");",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "jit.gen.codebox",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 762.0, 341.0, 338.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"code" : "Param amt(0.0);\r\n\r\n\r\nlines = snorm / vec(1.0, 1.3) * 1.3;\r\n\r\n\r\npicIn = nearestpix(in1, vec(cell.x, dim.y - cell.y));\r\noffset = vec(0, rgb2hsl(picIn).z, 0) * amt - vec(0, amt * 0.5, 0);\r\n\r\nout1 = lines + offset;\r\nout2 = picIn;",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "jit.gen.codebox",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 761.0, 133.0, 549.0, 204.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 762.0, 710.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 762.0, 45.0, 198.0, 22.0 ],
					"text" : "jit.matrix 4 float32 500 50 @adapt 0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Wavy",
					"id" : "obj-6",
					"index" : 4,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1001.0, 20.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Noise",
					"id" : "obj-5",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 459.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Slitscan",
					"id" : "obj-4",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 256.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 199.0, 430.0, 19.0, 22.0 ],
					"text" : "t l"
				}

			}
, 			{
				"box" : 				{
					"attr" : "noiseAmt",
					"id" : "obj-41",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 47.0, 498.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 469.0, 42.0, 20.0 ],
					"text" : "Noise"
				}

			}
, 			{
				"box" : 				{
					"code" : "random(uv)\r\n{\r\n\tr = fract(sin(dot(uv, vec(12.98, 78.2))) * 437.54);\r\n\tg = fract(sin(dot(uv, vec(12.98, 78.2))) * 758.54);\r\n\tb = fract(sin(dot(uv, vec(12.98, 78.2))) * 58.54);\r\n\t\r\n\treturn vec(r,g,b);\r\n}\r\n\r\nParam noiseAmt(0.1);\r\n\r\nout1 = mix(in1, random(norm + in1), noiseAmt);",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "jit.gl.pix.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 199.0, 469.0, 472.0, 200.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "speed",
					"id" : "obj-7",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 190.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "distAmt",
					"id" : "obj-26",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 43.0, 322.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 295.0, 96.0, 20.0 ],
					"text" : "Slitscan Lines"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 199.0, 190.0, 29.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"code" : "Param distAmt(0.1);\r\n\r\noffset = in2 * vec(0, 1) * distAmt;\r\n\r\nout1 = sample(in1, norm + offset,\r\n boundmode = \"clamp\");",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "jit.gl.pix.codebox",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 199.0, 295.0, 386.0, 120.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 224.0, 64.0, 22.0 ],
					"text" : "offset 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 501.0, 190.0, 43.0, 22.0 ],
					"text" : "jit.time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 375.0, 260.0, 210.0, 22.0 ],
					"text" : "jit.gl.bfg @basis noise.cell @scale 0 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 20.0, 96.0, 20.0 ],
					"text" : "Barrel Distortion"
				}

			}
, 			{
				"box" : 				{
					"attr" : "barrelDistAmt",
					"id" : "obj-12",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 43.0, 45.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"code" : "Param barrelDistAmt(0.25);\r\n\r\nbarrelUV = snorm * length(snorm) / sqrt2;\r\nbarrelUV = barrelUV * 0.5 + 0.5;\r\nuv = mix(norm, barrelUV, barrelDistAmt);\r\n\r\n\r\nout1 = sample(in1, uv, boundmode = \"clamp\");",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "jit.gl.pix.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 199.0, 20.0, 388.0, 152.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 199.0, 710.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Video",
					"id" : "obj-1",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 5.0, 20.0, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 52.5, 77.0, 195.48828125, 77.0, 195.48828125, 10.0, 208.5, 10.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"midpoints" : [ 384.5, 288.5, 575.5, 288.5 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 510.5, 218.0, 510.5, 218.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 510.5, 250.0, 384.5, 250.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 208.5, 422.5, 208.5, 422.5 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"midpoints" : [ 931.0, 451.86328125, 820.5, 451.86328125 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"source" : [ "obj-25", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 52.5, 354.0, 196.41015625, 354.0, 196.41015625, 285.0, 208.5, 285.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 208.5, 460.5, 208.5, 460.5 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 56.5, 530.0, 132.5, 530.0, 132.5, 459.0, 208.5, 459.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 349.5, 222.0, 493.98046875, 222.0, 493.98046875, 180.0, 510.5, 180.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-1336"
	}

}
