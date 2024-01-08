import System.Environment
import Control.Monad

makeSquare :: Int -> String
makeSquare n = replicate n '*'


main :: IO ()
main = do
    args <- getArgs
    case args of
        [x] -> do
            n <- readIO x
            let line = makeSquare n
            replicateM_ n (putStrLn line)
        _ -> putStrLn "Usage: square <number>"
