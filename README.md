# voter_sims

## To Run
To run this program, type: ruby main.rb inside the terminal, while in the "voter_sims" directory


## Overview

A program that allows a user to create a directory of politicians and voters.

Users will be able to Create, List, Update and Delete both voters and politicians from the directory. 

In other words, CRUD.

### Main Menu

```sh
What would you like to do?
(C)reate, (L)ist, (U)pdate, or (D)elete
```

### Create

When I type `C`:

```sh
What would you like to create?
(P)olitician or (V)oter
```

#### Create Politician

When I type `P`:

```sh
Name?
```
Allow the user to input any name.

```sh
Party?
(D)emocrat or (R)epublican
```
Then create a `Politician` with the collected data.

#### Create Voter

If instead I type `V`:

```sh
Name?
```
Allow the user to input any name.

```sh
Politics?
(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral
```

### List

When I type `L`, display a list of all the created characters.

Example:

```sh
* Politician, Marco Rubio, Republican
* Voter, Juha Mikkola, Socialist
```

### Update

When I type `U`:

```sh
Who would you like to update?
Marco Rubio

# If the name matches a known person
New name?

# If that person is a Politician
New Party?

# If that person is just a Voter
New Politics?
```

### Delete

```sh
Who would you like to delete?
Marco Rubio


# It delete that person.
```
