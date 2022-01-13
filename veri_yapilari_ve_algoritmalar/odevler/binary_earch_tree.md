# Proje 3
- [7, 5, 1, 8, 3, 6, 0, 9, 4, 2] dizisinin Binary-Search-Tree aşamalarını yazınız.

Örnek: root x'dir. root'un sağından y bulunur. Solunda z bulunur vb.

# Çözüm

- 7 yi ilk düğüm olarak alıyorum ve diğer dizi elemanlarını ağaca sırasıyla ekliyorum:

    - 5, 7'nin solunda yer alır.
    - 1, önce 7'nin solunda sonra 5'in solunda yer alır.
    - 8, 7'nin sağında yer alır.
    - 3, 7'nin ve  sonra 5'in solunda 1 ile arasında yer alır.
    - 6, 7'nin solunda, 5'in sağında yer alır.
    - 0, sırasıyla 7-5-3'ün ve en son olarak 1 solunda yer alır.
    - 9, 7'nin sağı ve 8 olduğu için 8'in sağında yer alır.
    - 4, 7'nin solunda 3'e kadar gidip 3'ün sağında yer alır.
    - 2, 7'ninsol kolundan 3'ün solunda 1 ile arasında yer alır.
