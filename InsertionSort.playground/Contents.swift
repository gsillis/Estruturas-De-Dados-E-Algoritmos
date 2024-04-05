import Foundation

func insertionSort<T: Comparable>(arr: inout [T]) { // inout serve para o parametro recebido possa ser alterado no escopo da função refletindo no output, pois por padrão os parametros são let em Swift
    
    for index in 1 ..< arr.count { // loop no range de 1 a arr.count
        
        guard arr.count > 1 else { return } // Verifica se o array possui mais de um elemento, pois array de 1 elemento já está ordenado

        var j = index // usada para percorrer o array de forma decrescente a partir da posição do index no array
        let temp = arr[index] // armazena o valor do elemento atual na posição do index
        
        while j > 0 && temp < arr[j - 1] { // verifica se j > 0 e se o elemento temporário (temp) é < que o elemento anterior no array. Isso é feito para encontrar a posição correta para inserir o elemento temporário.
            arr[j] = arr[j - 1] // Move o elemento à esquerda para a direita para abrir espaço para o elemento temporário
            j -= 1 // decrementa o j
        }
        arr[j] = temp // Após encontrar a posição correta, insere o temp na posição j
    }
    print(arr)
}

var num = [5,2,4,6,1,3]
insertionSort(arr: &num)

var str = ["cebola", "tomate", "alface", "rucula", "arroz"]
insertionSort(arr: &str)

var doub = [2.1,2.5,1.0,0.0,-1.7,10.6]
insertionSort(arr: &doub)
