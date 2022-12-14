; *******************************************************************************************************************
; Application       : DynALisp
; Project           : lsp-drawing-tools
; Description       : select all objects with the same hatch pattern name as the selected object
; File type         : standalone function
; 
; is part of the "DynALisp" open source repository [https://github.com/op2-platforms/DynALisp.git]
;
; *******************************************************************************************************************

(defun c:sl-pattname (/ obj pattn ss sslen) 
    ; obj = entsel input object
    ; pattn = hatch pattern name
    ; ss = selection set
    ; sslen = selection set length

    ;get an object with the desired property:
    (setq obj (entget (car (entsel "\nSelect hatch pattern: "))))

    ;get an object with the desired property:
    (if (setq pattn (cdr (assoc 2 obj))) 
        (progn 
            (setq ss (ssget "X" (list (cons 2 pattn))))
            (setq sslen (itoa (sslength ss)))
            (princ (strcat sslen " hatch(es) selected with pattern name: " pattn))
            (if (> (atoi sslen) (getvar "gripobjlimit")) 
                (setvar "gripobjlimit" (atoi sslen))
            )
            (command "_.PSELECT" ss "")
            (princ)
        )
        ;error handling if selection as no hatch pattern name:
        (progn 
            (princ "\nWrong input; selected object has no hatch name")
            (princ)
            (c:sl-pattname)
        )
    )
)
