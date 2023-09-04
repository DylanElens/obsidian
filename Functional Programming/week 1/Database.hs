module Database where

type Person = (Name, Age, FavouriteCourse)

type Name = String

type Age = Integer

type FavouriteCourse = String

elena, peter, pol :: Person
elena = ("Elena", 33, "Functional Programming")
peter = ("Peter", 57, "Imperative Programming")
pol = ("Pol", 36, "Object Oriented Programming")

dylan = ("dylan", 22, "Functional Programming")

mika = ("mika", 22, "Functional Programming")

frits = ("frits", 22, "Functional Programming")

students :: [Person]
students = [elena, peter, pol, frits]

age :: Person -> Age
age (_, n, _) = n

name :: Person -> Name
name (n, _, _) = n

favouriteCourse :: Person -> FavouriteCourse
favouriteCourse (_, _, n) = n

showPerson :: Person -> String
showPerson person = show (age person) ++ "," ++ name person ++ "," ++ favouriteCourse person

twins :: Person -> Person -> Bool
twins (_, age1, _) (_, age2, _) = age1 == age2

increaseAge :: Person -> Person
increaseAge (name, age, course) = (name, age + 1, course)

-- first develop the expressions in GHCi, then replace the TODO's below with them
query1 :: [Person]
query1 = map increaseAge students

promoteStudent :: Person -> Person
promoteStudent (name, age, course) = ("Dr. " ++ name, age, course)

query2 :: [Person]
query2 = map promoteStudent students

query3 :: [Person]
query3 = filter (\(name, _, _) -> name == "frits") students

query4 :: [Person]
query4 = filter (\(_, age, _) -> age > 20) students

query5 :: Age
query5 = sum (map (\(_, age, _) -> age) students) `div` toInteger (length students)

query6 :: [Person]
query6 = map promoteStudent (filter (\(_, _, course) -> course == "Functional Programming") students)
