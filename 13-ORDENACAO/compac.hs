
import qualified Data.Set as Set

eliminarRepeticoes = Set.toList . Set.fromList    -- função que elimina repeticoes de uma lista -- achei na internet pronta: https://stackoverflow.com/questions/32686043/haskell-removing-duplicates-tuples-from-a-list

quantasvezes_se_repete xs = eliminarRepeticoes (map (\x -> (x, length (filter (==x) xs))) xs )    -- uso o map que conta quantas vezes cada elemento aparecre individualmente, aí chamo a função eliminarRepeticoes para eliminar as repeticoes 


--compac chama a função quantasvezes_se_repete e pega x e y e se y > 1 adiciona [x,y] senao, [x]
compac xs = map (\x -> if (snd x) > 1 then [fst x, snd x] else [fst x]) (quantasvezes_se_repete xs)

main = do 
    print $ quantasvezes_se_repete [] -- == []
    print $ compac [1,1,1] -- == -- [[1,3]]
    print $ compac [1,2,3]-- == [[1],[2],[3]]
    print $ compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5]-- == [[2,5],[3],[4,3],[9],[5,4]]
    print $ compac [1,2,1,5,1,5]  -- == [[1,3],[2],[5,2]]