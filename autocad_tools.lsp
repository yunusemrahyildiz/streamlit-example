;; AutoLISP script to create standard layers and set line types
;; Use: Load this file in AutoCAD and run the command QLAYERS

(defun c:QLAYERS ()
  (setq layerInfo '(
    ("Walls" 1 "Continuous")
    ("Doors" 2 "Dashed")
    ("Windows" 3 "Continuous")
  ))
  (foreach info layerInfo
    (entmake (list '(0 . "LAYER")
                   (cons 2 (nth 0 info))
                   (cons 62 (nth 1 info))
                   (cons 6 (nth 2 info))))
  )
  (princ "\nStandard layers created.")
  (princ)
)

(princ "\nQLAYERS loaded. Run QLAYERS to create layers.")
(princ)
