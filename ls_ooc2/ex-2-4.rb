a = "string"
b = "string"
p a
p b
p a.object_id == b.object_id
p a.intern == b.intern
