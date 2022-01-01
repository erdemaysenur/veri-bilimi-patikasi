# Proje 2

[16,21,11,8,12,22] -> Merge Sort

- Yukarıdaki dizinin sort türüne göre aşamalarını yazınız.
- Big-O gösterimini yazınız.

# Çözüm

- Merge sort:

    - 16, 21, 11 | 8, 12, 22 (n/2)
    - 16 | 21, 11 | 8, 12 | 22 (n/2)
    - 16 | 21 | 11 | 8 | 12 | 22 (n/2)
    - 16 | 11, 21 | 8, 12 | 22 (n/2)
    - 11, 16, 21 | 8, 12 , 22 (n/2)
    - 8, 11, 12, 16, 21, 22 (n/2)
    
    
- Time complexity:

    - O(n)*O(log(n)) = O(nlog(n))
