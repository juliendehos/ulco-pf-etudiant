module Produit where

import Data.List.Split (splitOn)
import Text.Read (readMaybe)

type Produit = (String, Int)

formateProduit :: Produit -> String
formateProduit (nom, quantite) = nom ++ " (" ++ show quantite ++ ")"

-- TODO
-- essaie de lire un produit depuis un String
-- exemple: "Chimay;6" -> ("Chimay", 6)
-- lireProduit :: String -> Maybe Produit

