module Inventaire where

import Data.List (groupBy, sortBy)

import Produit
import Stock

type Inventaire = [Produit]

-- TODO
-- compare le nom de deux produits
-- cmpProduit :: Produit -> Produit -> Ordering

-- TODO
-- teste si deux produits ont le même nom
-- memeProduit :: Produit -> Produit -> Bool

-- TODO
-- calcule l'inventaire d'un groupe de produit de meme nom
-- retourne le produit avec le nom et la somme des quantités
-- considère que les produits ont tous le même nom et que la liste n'est pas vide
-- calculerInventaireProduit :: [Produit] -> Produit

-- TODO
-- calcule l'inventaire de tout un stock
-- algo: trier puis grouper puis calculer l'inventaire de chaque groupe de produit
-- calculerInventaire :: Stock -> Inventaire

