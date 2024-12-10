#!/usr/bin/python3
# -*- coding: utf-8 -*-

def main():
    print("FT.CREATE publicT1Idx ON hash PREFIX 1 public.t1: SCHEMA i1 NUMERIC i2 NUMERIC SORTABLE i3 TEXT")
    for i in range(0, 10000000):
        print(f"HSET public.t1:{i} i1 {i} i2 {i//10000} i3 TEXT_{i}")
    print("SAVE")


if __name__ == "__main__":
    main()
