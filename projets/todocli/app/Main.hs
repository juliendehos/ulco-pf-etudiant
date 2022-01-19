-- import Text.Read
-- import System.Environment
-- import System.IO

type Task = (Int, Bool, String)     -- id, done?, label
type Model = (Int, [Task])          -- next id, tasks

test :: Model -> Model
test (nextI, tasks) = (nextI, reverse tasks)

main :: IO ()
main = do
    contents <- readFile "tasks.txt"
    let model1 = read contents
        model2 = test $! model1
    print model2
    mapM_ print (snd model2)

