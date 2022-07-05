import Data.Either 
import Data.Map 
import qualified Data.Map as Map 
import Data.Maybe 
 
data Estado = Alugado | Livre deriving (Show, Eq) 
 
type Codigo = String 
 
type Armario = (Estado, Codigo) 
 
type Armarios = Map.Map Int (Estado, Codigo) 
 

consulta :: Int -> Armarios -> Maybe Estado 
consulta indice armarios 
  | isNothing armario = Nothing                                          --  se o armário não existir retorna Nothing
  | otherwise = Just $ fst $ fromJust armario                             -- se o armario existir retorna o estado do armario
  where 
    armario = Map.lookup indice armarios 
 
-- dado o número do armário, retorna Right armário ou Left "Armario nao existe" 
pegarArmario :: Int -> Armarios -> Either String Armario 
pegarArmario indice armarios 
  | isNothing armario = Left $ "Armario " ++ show indice ++ " nao existe"                   -- verifica se o armario existe e se não existe retorna armaio nao existe
  | otherwise = Right (fromJust armario)                                                    -- se o armario existir retorna o armario
  where 
    armario = Map.lookup indice armarios                                                    
 
-- consultar: dado o número de um armário retorna "Right código" 
-- Se não existir, retorna "Left Armario não existe", se já estiver alugado retorna "Left ja esta ocupado" 
-- Utilize a função pegarArmario para obter o armário e verificar se ele existe 
-- Não reescreva a mesma mensagem de erro, utilize a invocação do pegarArmário 
pegarCodigo :: Int -> Armarios -> Either String Codigo 
pegarCodigo indice armarios 
  | isLeft eitherArmario = Left $ fromLeft "" eitherArmario                     -- se o armario nao existir,retorna que o Left armario nao existe
  | otherwise =                                                                 -- armario existe 
    if Alugado == fst armario                                                   -- verifica se está alugado, e se tiver retorna que está alugado
      then Left $ "Armario " ++ show indice ++ " ja esta ocupado" 
      else Right $ snd armario                                                  -- se nao tiver alugado retorna o codigo do armario
  where 
    eitherArmario = pegarArmario indice armarios 
    armario = fromRight (Alugado, "") eitherArmario 
 
-- aluguel - se o armário existir e estiver desocupado, o estado do armário no mapa é alterado para alugado 
-- reaproveite a função pegarCodigo para obter a chave atual e os erros de "não existe" e "está ocupado" 
aluguel :: Int -> Armarios -> Either String Armarios 
aluguel indice armarios 
  | isRight codigo = Right $ insert indice (Alugado, snd $ armarios ! indice) armarios  -- se o armario existir e nao estiver alugado retorna o armario com o estado alterado
  | isLeft codigo = Left $ fromLeft "" codigo                                           -- se o armario nao existir ou estiver alugado retorna erro
  | otherwise = Left ""                                                                 -- caso contrario
  where 
    codigo = pegarCodigo indice armarios 
 
-- para devolver um armário é necessário que ele exista, que esteja alugado e que o código esteja correto 
-- utilize a função pegar armário para verificar a existência. 
-- Se o armário não estiver alugado ou se o código estiver incorreto avise utilizando o Left. 
devolucao :: Int -> Codigo -> Armarios -> Either String Armarios 
devolucao indice codigo armarios 
  | isLeft eitherArmario = Left $ fromLeft "" eitherArmario                                            -- se o armário não existir retorna erro 
  | otherwise =                                                                                        -- caso exista
        if snd armario == codigo then                                                                   -- verifica se o código está correto
            if Livre == fst armario then Left $ "Armario " ++ show indice ++ " nao esta ocupado"       -- verificando se o armário está alugado 
                else Right $ insert indice (Livre, codigo) armarios 
            else  Left "Codigo incorreto"
  where 
    eitherArmario = pegarArmario indice armarios                   -- pega o either string ou armário                                               
    armario = fromRight (Alugado, "") eitherArmario                 -- pega armario
 
lockers :: Armarios                 
lockers = 
  Map.fromList 
    [ (100, (Alugado, "ZD39I")), 
      (101, (Livre, "JAH3I")), 
      (109, (Alugado, "893JJ")), 
      (110, (Alugado, "99292")) 
    ] 
 
main :: IO () 
main = do 
  let armarios0 = lockers 
  print $ "01 " ++ show armarios0 
  print $ "02 " ++ show (consulta 100 armarios0) 
  print $ "03 " ++ show (consulta 101 armarios0) 
  print $ "04 " ++ show (consulta 200 armarios0) 
  print $ "05 " ++ show (pegarCodigo 100 armarios0) 
  print $ "06 " ++ show (pegarCodigo 101 armarios0) 
  print $ "07 " ++ show (pegarCodigo 200 armarios0) 
  print $ "08 " ++ show (aluguel 100 armarios0) 
  print $ "09 " ++ show (consulta 101 armarios0) 
  let armarios1 = fromRight armarios0 $ aluguel 101 armarios0 
  print $ "10 " ++ show (consulta 101 armarios1) 
  print $ "11 " ++ show (fromLeft "" $ devolucao 103 "IQSA9" armarios1) 
  print $ "12 " ++ show (fromLeft "" $ devolucao 101 "ZD39I" armarios1) 
  let armarios2 = fromRight armarios1 $ devolucao 110 "99292" armarios1 
  print $ "13 " ++ show (consulta 110 armarios2) 
  print $ "14 " ++ show armarios2 
 