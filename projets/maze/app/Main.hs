import qualified Data.Vector as V

import Control.Monad (forM_)
import System.Environment
import System.IO

type Maze = V.Vector Char

-- runMaze :: Int -> Int -> Int -> Int -> Maze -> IO ()
-- runMaze ni nj i0 j0 maze = ...

main :: IO ()
main = do
    hSetBuffering stdin NoBuffering
    file <- readFile "data/maze1.txt"
    let (infoLine:mazeLines) = lines file
        maze = V.fromList (concat mazeLines)
    print infoLine
    print maze
    forM_ [0 .. 9] $ \i -> do
        let c = maze V.! i
        putStr [c]

