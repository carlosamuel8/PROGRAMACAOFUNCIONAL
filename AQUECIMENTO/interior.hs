import Distribution.Simple.Program.HcPkg (list)
interior xs = drop 1 $ reverse (drop 1 (reverse xs)) 
