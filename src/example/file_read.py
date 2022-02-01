#!/usr/bin/env python
# -*- coding: utf-8 -*-

uid_file = open('max_uid.txt','r+')
uid_last = uid_file.readlines()
print("uid_last %s" %uid_last)
uid_new=int(uid_last[0])
print("uid_new %s" %uid_new)
uid_file.seek(0)
max_uid=175
print(max_uid)
uid_file.write(str(max_uid))

