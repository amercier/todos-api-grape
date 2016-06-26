todos-api-grape
===============

Simple Todo API implemented with [Grape](http://www.ruby-grape.org/).

[![Build Status](https://img.shields.io/travis/amercier/todos-api-grape/master.svg)](https://travis-ci.org/amercier/todos-api-grape)

---

```json
GET /todos
```

```json
HTTP 200 OK

[
  { "id": 0, "title": "Have tea with the Queen" },
  { "id": 1, "title": "Circumnavigate the globe" },
  { "id": 2, "title": "Race a cheetah" }
]
```

---

```json
POST /todos

{ "title": "Climb Mount Everest" }
```

```json
HTTP 201 Created

{ "id": 3, "title": "Climb Mount Everest" }
```

---

```json
PUT /todos/3

{ "title": "Climb Mount Blanc" }
```

```json
HTTP 200 OK
```

---

```json
DELETE /todos/3
```

```json
HTTP 200 OK
```
