function searchBar() {
  const searchIcon = document.querySelector('.search-button-js');
  const searchBarBig = document.querySelector('.searchbar-medium');
  const input = document.querySelector('input');
  searchIcon.addEventListener("click", (event) => {
    event.preventDefault();
    searchBarBig.value = "";
    searchBarBig.classList.toggle("searchbar-medium-wide");
    if (searchBarBig.classList.contains('searchbar-medium-wide')) {
      searchBarBig.focus();
    } else {
      searchBarBig.blur();
    }
  });
}

export { searchBar };
