# RXNGIF

This will be our first database-backed, CRUD application.

To start out, you have access to the following methods for free:

 - `Picture.all` returns an Array of Hashes. Each Hash represents one picture, and has two keys: `:source` (the URL of the picture) and `:caption` (a note about the picture).
 - `Picture.first` returns the first Hash in the Array.
 - `Picture.last` returns the last Hash in the Array.
 - `Picture.find(id)` returns the element of the Array at the `id`th position.

## Challenge One

Support the following URL:

[http://localhost:3000/pictures](http://localhost:3000/pictures)

The resulting page should display a list of all of the pictures' captions.

## Challenge Two

Support the following URL:

[http://localhost:3000/pictures/3](http://localhost:3000/pictures/3)

The resulting page should display the details (the image and the caption) of the picture at the fourth position in the list. This should be a dynamic route, so that any position number can be plugged in after the last slash.

## Challenge Three

Support the following URL:

[http://localhost:3000/pictures/new](http://localhost:3000/pictures/new)

The resulting page should display a form to add a new picture.

The form should have two input fields: one for Source, and one for Caption.

When the user clicks "Submit", the browser should send the data to the URL `http://localhost:3000/create_picture`. (You don't have to support that URL yet, just make the form go there. You should end up with a NO ROUTE error.)

## Challenge Four

On the page with the list of all of the pictures, make each picture's caption a link to that picture's details page.
