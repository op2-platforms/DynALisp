; *******************************************************************************************************************
; Application       : DynALisp
; Project           : lsp-drawing-tools
; Description       : Drawn a polyline and associate an hatch and layer to it (based on layerkey)
; File type         : standalone function
; 
; is part of the "DynALisp" open source repository [https://github.com/op2-platforms/DynALisp.git]
;
; *************************************************************************************************
; Available layer keys: 
; 
;
; // required AIA or AIA base layer keys:
; FINE                                  = 0.18mm line
; THIN                                  = 0.25mm line
; MED                                   = 0.35mm line
; WIDE                                  = 0.50mm line
; HATCH                                 = Hatch Pattern
; XLINE                                 = Non-plotting line
; HIDDEN                                = Hidden line
; ANNMATCH                              = Match line
; ZONE                                  = Zone hatches
; TOPO                                  = Topography hatches (Architectural)
; SITE                                  = Site hatches (Civil)
; CEILGRID                              = Ceiling grids
; WALLFIRE                              = Wall fire patterning
;
;
; // required NCS 5.0 or NCS base layer keys:
; G-DS-DETL-LINE-01-EXTRA_FINE          = 0.13mm line
; G-DS-DETL-LINE-02-FINE                = 0.18mm line
; G-DS-DETL-LINE-03-THIN                = 0.25mm line
; G-DS-DETL-LINE-04-MED                 = 0.35mm line
; G-DS-DETL-LINE-05-WIDE                = 0.50mm line
; G-DS-DETL-LINE-06-EXTRA_WIDE          = 0.70mm line
; G-DS-DETL-LINE-07-XX_WIDE             = 1.00mm line
; G-DS-DETL-LINE-08-XXX_WIDE            = 1.40mm line
; G-DS-DETL-LINE-09-XXXX_WIDE           = 2.00mm line
; G-DS-DETL-LINE-10-HEAVY               = 0.60mm line
; G-DS-DETL-LINE-11-NORMAL              = 0.40mm line
;
; G-DS-ANNO-STD-BACKGROUND_SCREEN       = Solid background fill (light grey)
; G-DS-ANNO-STD-HATCH_PATTERNS          = Hatch Pattern
; G-DS-ANNO-STD-HIDDEN_LINES            = Hidden line 
;
; G-DS-ELEV-CUT_PLANE-ABOVE             = Dashed line
; G-DS-ELEV-CUT_PLANE-BELOW             = Hidden line
; G-DS-ELEV-CUT_PLANE-HIGH              = Wide line
; G-DS-ELEV-CUT_PLANE-LOW               = Thin line
;
;
; *************************************************************************************************



;#region detail hatches
(defun c:ha-cellulose (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "NET3"
          scale-i "1.0"
          scale-m "1.0"
          angl    "0"
          hkey    "HATCH"
          lkey    "XLINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-sprayfoam (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "HONEY"
          scale-i "0.5"
          scale-m "0.5"
          angl    "0"
          hkey    "HATCH"
          lkey    "XLINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-plywood (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "WOOD_GLU-LAMBEAM"
          scale-i "0.25"
          scale-m "6.35"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-woodplank (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "WOOD_2"
          scale-i "0.1875"
          scale-m "7.8"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-woodframe (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "WOOD_1"
          scale-i "0.75"
          scale-m "7.5"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-particleboard (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_TEXTURE"
          scale-i "3.0"
          scale-m "76.2"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-earth (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "EARTH"
          scale-i "1.0"
          scale-m "1.0"
          angl    "45"
          hkey    "HATCH"
          lkey    "XLINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-concrete (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "CONCRETE_c"
          scale-i "1.0"
          scale-m "2.54"
          angl    "0"
          hkey    "HATCH"
          lkey    "XWIDE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-sand (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_STIPPLE"
          scale-i "1.0"
          scale-m "2.54"
          angl    "0"
          hkey    "HATCH"
          lkey    "FINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-grout (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_STIPPLE"
          scale-i "2.0"
          scale-m "50.8"
          angl    "0"
          hkey    "HATCH"
          lkey    "XLINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-gypsum (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_TEXTURE"
          scale-i "0.5"
          scale-m "12.7"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-plaster (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_TEXTURE"
          scale-i "3.0"
          scale-m "76.2"
          angl    "0"
          hkey    "HATCH"
          lkey    "THIN"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-stucco (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_STIPPLE"
          scale-i "3.0"
          scale-m "76.2"
          angl    "0"
          hkey    "HATCH"
          lkey    "THIN"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-asphalt (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "SITEWORK_ASPHALT"
          scale-i "1"
          scale-m "25.4"
          angl    "90"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-mortar (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "GENERAL_STIPPLE"
          scale-i "1.0"
          scale-m "2.54"
          angl    "0"
          hkey    "HATCH"
          lkey    "FINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-steel (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI32"
          scale-i "1.0"
          scale-m "0.5"
          angl    "0.0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-demo (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI31"
          scale-i "0.5"
          scale-m "0.5"
          angl    "90.0"
          hkey    "HATCH"
          lkey    "THIN"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-exst (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI31"
          scale-i "1.0"
          scale-m "1.0"
          angl    "90.0"
          hkey    "HATCH"
          lkey    "XLINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-insul (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI37"
          scale-i "1.0"
          scale-m "1.0"
          angl    "45"
          hkey    "HATCH"
          lkey    "FINE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-brick (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI31"
          scale-i "1.0"
          scale-m "1.0"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-stone (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI33"
          scale-i "1.0"
          scale-m "1.0"
          angl    "0"
          hkey    "HATCH"
          lkey    "WIDE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-cmu (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI37"
          scale-i "1.0"
          scale-m "1.0"
          angl    "0"
          hkey    "HATCH"
          lkey    "WIDE"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-hardboard (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "ANSI31"
          scale-i "1.0"
          scale-m "1.0"
          angl    "0"
          hkey    "HATCH"
          lkey    "MED"
          isan    1
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-gravel (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "SITEWORK_GRAVEL"
          scale-i "3.0"
          scale-m "76.2"
          angl    "22.5"
          hkey    "HATCH"
          lkey    "FINE"
          isan    0
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-chrushedstone (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "SITEWORK_GRAVEL"
          scale-i "6.0"
          scale-m "152.4"
          angl    "22.5"
          hkey    "HATCH"
          lkey    "FINE"
          isan    0
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
(defun c:ha-screen (/ hname scale-i scale-m angl hkey lkey isan) 
    ;key = layer key available in drawing file
    ;isan = is annotative? (1 = yes, 0 = no)
    (setq hname   "SOLID"
          scale-i "1.0"
          scale-m "1.0"
          angl    "0"
          hkey    "G-DS-ANNO-STD-BACKGROUND_SCREEN"
          lkey    "XLINE"
          isan    0
    )
    (draw-hatch hname scale-i scale-m angl hkey lkey isan)
)
;#endregion




(defun draw-hatch (hname scale-i scale-m angl hkey lkey isan / hsc) 
    (vl-load-com)

    (setq hsc (if (= 1 (getvar "measurement")) scale-m scale-i))

    ;draw a polyline:
    (princ "\nDraw closed polyline: ")
    (command "pline" (while (= 1 (getvar "cmdactive")) (command pause)))
    (command "remaplayers" "l" "" lkey "")

    ;create an associated hatch:
    (if 
        (and (= :vlax-true (vla-get-Closed (vlax-ename->vla-object (entlast)))) 
             (= "AcDbPolyline" (vla-get-ObjectName (vlax-ename->vla-object (entlast))))
        )
        (progn 
            (if (/= "SOLID" hname) 
                (command "-hatch" 
                         "s"
                         "l"
                         ""
                         "an"
                         (if (= 1 isan) "y" "n")
                         "p"
                         hname
                         hsc
                         angl
                         "a"
                         "a"
                         "y"
                         ""
                         ""
                )
                (command "-hatch" "s" "l" "" "an" "n" "p" hname "a" "a" "y" "" "")
            )
            (command "remaplayers" "l" "" hkey "")
        )
        (progn 
            (command "erase" "l" "")
            (alert "\nError in operation: \nPolyline must be closed!!!")
        )
    )
    (princ)
)