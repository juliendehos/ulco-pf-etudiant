import Text.Read
import System.Environment
import System.IO

type Task = (Int, Bool, String)
type Todo = (Int, [Task])

main :: IO ()
main = do
    contents <- readFile "tasks.txt"
    let todo1 = read $! contents :: Todo
    print todo1
    mapM_ print (snd todo1)

