# Реализация алгоритма RLL в среде Matlab



# Пример использования функции
```
l = [1,1,1,1,1,1,1,56,56,87,87,89];
compressed = CompressRLL(l)
% compressed = 199   1   194    56   194    87    89
decompressed = DecompressRLL(compressed)
% decompressed = 1     1     1     1     1     1     1    56    56    87    87    89

```
