
import System.Environment

printFile :: String -> IO ()
printFile file = do
    contents <- readFile file
    putStr contents

main :: IO ()
main = do
    args <- getArgs
    case args of
        [file] -> do printFile file
        _ -> putStrLn "Usage: cats <file>"
