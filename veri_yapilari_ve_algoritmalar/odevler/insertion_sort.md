# Proje 1
- [22, 27, 16, 2, 18, 6] -> Insertion Sort

    - Yukarı verilen dizinin sort türüne göre aşamalarını yazınız.
    - Big-O gösterimini yazınız.
    - Time Complexity: Average case: Aradığımız sayının ortada olması,Worst case: Aradığımız sayının sonda olması, Best case: Aradığımız sayının dizinin en başında olması.
    - Dizi sıralandıktan sonra 18 sayısı hangi case kapsamına girer? Yazınız.


- [7, 3, 5, 8, 2, 9, 4, 15, 6] dizisinin Insertion Sort'a göre ilk 4 adımını yazınız.

# Çözüm

- Insertion Sort algoritması dizinin ilk elemanından başlayarak son elemana kadar karşılaştırma yaparak istenen değeri bulur ve ilk elemanla istenen değerin yerini değiştirir. 1 kere bu işlem yapıldıktan sonra dizinin ikinci elemanıyla aynı işlem yapılır ve bu şekilde devam eder.

    - [22*, 27, 16, 2*, 18, 6] (n)
    - [2, 27*, 16, 22, 18, 6*] (n-1)
    - [2, 6, 16*, 22, 18, 27] (n-2)
    - [2, 6, 16, 22*, 18*, 27] (n-3)
    - [2, 6, 16, 18, 22, 27] 1
    
    1'den n'e kadar olan sayıların toplamı n*(n-1)/2 = (n^2-n)/2
    Dominant faktör n^2 olduğundan Big-O notation'ı **O(n^2)** olur.
    
    - Bu algoritma için best case dizinin sıralı olması bu durumda time complexity **O(n)**
    - Worst case (büyükten küçüğe sıralı olması) = average case ve **O(n^2)**
    - 18 dizinin ortasında yer alır ve average case olur.
   
- [7, 3, 5, 8, 2, 9, 4, 15, 6] dizisinin Insertion Sort’a göre ilk 4 adımı:

    - [7*, 3, 5, 8, 2*, 9, 4, 15, 6]
    - [2, 3*, 5, 8, 7, 9, 4, 15, 6]
    - [2, 3, 5*, 8, 7, 9, 4*, 15, 6]
    - [2, 3, 4, 8*, 7, 9, 5*, 15, 6]
    - [2, 3, 4, 5, 7, 9, 8, 15, 6]
    