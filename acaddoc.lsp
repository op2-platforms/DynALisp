; Autocad startup code
;
(defun dynalisp-startup () 
    (vl-load-com)

    ;find the application file:
    (setq dir_start (vl-filename-directory (findfile "acaddoc.lsp"))
          app_file  (strcat dir_start "\\DYNALISP.VLX")
    )

    ;load the application file:
    (load app_file)

    ;custom command to load or reload the application file:
    (defun c:LOAD-DYNALISP () 
        (load app_file)
        (prompt (strcat "\n...[" app_file "]"))
        (princ)
    )

    ;tell the user where the application file was loaded from:
    (Prompt "\nDynALisp application loaded from:")
    (prompt (strcat "\n...[" app_file "]"))
    (princ)
)

; Add the startup function to the list of functions to be called at startup:
(if s::startup 
    (setq s::startup (append s::startup (quote ((dynalisp-startup)))))
    (defun s::startup () (dynalisp-startup))
)
