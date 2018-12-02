function searchBar() {
  const searchIcon = document.querySelector('.search-button-js');
  const searchBarBig = document.querySelector('.searchbar-medium');
  searchIcon.addEventListener("click", (event) => {
    event.preventDefault();
    searchBarBig.classList.toggle("searchbar-medium-wide");
  });
}

export { searchBar };
