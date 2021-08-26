let books = [{
    id: 1,
    name: 'First book'
  }];
  let nextBookId = 2;
  
  /*
    TODO: The existing code uses functions called `addBook` and `deleteBook`, implement them.
  */
  function addBook(){
   let inputValue = document.getElementById('newBookName').value;
   if(inputValue !== ''){
       books.push({
           id: nextBookId,
           name: inputValue
       });
       render();
   }
    nextBookId++;
  }

  function deleteBook(bookToDelete){
      console.log(books);
    let bookId = books.indexOf(bookToDelete);
    books.splice(bookId, 1);
    render();
  }
  
  
  function render() {
    const container = document.querySelector('.book-list');
    while (container.firstChild) {
      container.removeChild(container.firstChild);
    }
    books.forEach(book => {
      const bookNameElement = document.createElement('span');
      bookNameElement.className = 'book-name';
      bookNameElement.innerHTML = book.name;
  
      const deleteButtonElement = document.createElement('button');
      deleteButtonElement.className = 'delete-book btn btn-danger';
      deleteButtonElement.innerHTML = 'Delete';
      deleteButtonElement.onclick = () => deleteBook(book);
  
      const bookElement = document.createElement('li');
      bookElement.className = 'list-group-book book row';
      bookElement.appendChild(bookNameElement);
      bookElement.appendChild(deleteButtonElement);
  
      container.appendChild(bookElement);
    });
  }
  
  document.querySelector('#addBook').addEventListener('click', addBook);
  
  render();
  