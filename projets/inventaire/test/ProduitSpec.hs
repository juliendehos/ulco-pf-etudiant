module ProduitSpec (main, spec) where

import Test.Hspec
import Produit

main :: IO ()
main = hspec spec

spec :: Spec
spec = do

    describe "formateProduit" $ do

        it "(Chimay,6)" $ formateProduit ("Chimay", 6) `shouldBe` "Chimay (6)"

    -- TODO

{-

    describe "lireProduit" $ do

        it "Chimay;6" $ lireProduit "Chimay;6" `shouldBe` Just ("Chimay", 6)

        it "Chimay; 6" $ lireProduit "Chimay; 6" `shouldBe` Just ("Chimay", 6)

        it "6; Chimay" $ lireProduit "6; Chimay" `shouldBe` Nothing

        it "Chimay" $ lireProduit "Chimay" `shouldBe` Nothing

-}

