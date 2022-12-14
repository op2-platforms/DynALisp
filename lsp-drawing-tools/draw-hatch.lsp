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
; required AIA or AIA base layer keys:
; FINE                                  = 0.18mm line
; THIN                                  = 0.25mm line
; MED                                   = 0.35mm line
; WIDE                                  = 0.50mm line
; HATCH                                 = Hatch Pattern
; XLINE                                 = Non-plotting line
; HIDDEN                                = Hidden line
;
; required NCS 5.0 or NCS base layer keys:
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
; G-DS-ANNO-STD-BACKGROUND_SCREEN       = Hidden line (non-plotting)

; *************************************************************************************************
(defun c:ha-cellulose (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "NET3"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0"
          hkey  "HATCH"
          lkey  "XLINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-sprayfoam (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "HONEY"
          hsc-i "0.5"
          hsc-m "0.5"
          hang  "0"
          hkey  "HATCH"
          lkey  "XLINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-plywood (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "WOOD_GLU-LAMBEAM"
          hsc-i "0.25"
          hsc-m "6.35"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-woodplank (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "WOOD_2"
          hsc-i "0.1875"
          hsc-m "7.8"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-woodframe (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "WOOD_1"
          hsc-i "0.75"
          hsc-m "19.05"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-particleboard (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_TEXTURE"
          hsc-i "3.0"
          hsc-m "76.2"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-earth (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "EARTH"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "45"
          hkey  "HATCH"
          lkey  "XLINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-conc (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "CONCRETE_c"
          hsc-i "1.0"
          hsc-m "2.54"
          hang  "0"
          hkey  "HATCH"
          lkey  "XWIDE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-sand (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_STIPPLE"
          hsc-i "1.0"
          hsc-m "2.54"
          hang  "0"
          hkey  "HATCH"
          lkey  "FINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-grout (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_STIPPLE"
          hsc-i "2.0"
          hsc-m "50.8"
          hang  "0"
          hkey  "HATCH"
          lkey  "XLINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-gypsum (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_TEXTURE"
          hsc-i "0.5"
          hsc-m "12.7"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-plaster (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_TEXTURE"
          hsc-i "3.0"
          hsc-m "76.2"
          hang  "0"
          hkey  "HATCH"
          lkey  "THIN"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-stucco (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_STIPPLE"
          hsc-i "3.0"
          hsc-m "76.2"
          hang  "0"
          hkey  "HATCH"
          lkey  "THIN"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-asphalt (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "SITEWORK_ASPHALT"
          hsc-i "24.0"
          hsc-m "609.6"
          hang  "90"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-mortar (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "GENERAL_STIPPLE"
          hsc-i "1.0"
          hsc-m "2.54"
          hang  "0"
          hkey  "HATCH"
          lkey  "XLINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-steel (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "ANSI32"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0.0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-insul (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "ANSI37"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "45"
          hkey  "HATCH"
          lkey  "FINE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-brick (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "ANSI31"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-stone (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "ANSI33"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0"
          hkey  "HATCH"
          lkey  "WIDE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-cmu (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "ANSI37"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0"
          hkey  "HATCH"
          lkey  "WIDE"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-hardboard (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "ANSI31"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0"
          hkey  "HATCH"
          lkey  "MED"
          isan  1
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)

(defun c:ha-gravel (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "SITEWORK_GRAVEL"
          hsc-i "3.0"
          hsc-m "76.2"
          hang  "22.5"
          hkey  "HATCH"
          lkey  "FINE"
          isan  0
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-chrushedstone (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "SITEWORK_GRAVEL"
          hsc-i "6.0"
          hsc-m "152.4"
          hang  "22.5"
          hkey  "HATCH"
          lkey  "FINE"
          isan  0
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)
(defun c:ha-screen (/ hname hsc-i hsc-m hang hkey lkey isan) 
    (setq hname "SOLID"
          hsc-i "1.0"
          hsc-m "1.0"
          hang  "0"
          hkey  "G-DS-ANNO-STD-BACKGROUND_SCREEN"
          lkey  "XLINE"
          isan  0
    )
    (draw-hatch hname hsc-i hsc-m hang hkey lkey isan)
)

(defun draw-hatch (hname hsc-i hsc-m hang hkey lkey isan / hsc) 
    (vl-load-com)

    (setq hsc (if (= 1 (getvar "measurement")) hsc-m hsc-i))

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
                         hang
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