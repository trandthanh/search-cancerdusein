function searchBar() {
  const searchIcon = document.querySelector('.search-button-js');
  const searchBarBig = document.querySelector('.searchbar-medium');

  const dropdown = document.querySelector('.dropdown-navbar');

  const input = document.querySelector('input');
  searchIcon.addEventListener("click", (event) => {
    event.preventDefault();
    searchBarBig.value = "";
    searchBarBig.classList.toggle("searchbar-medium-wide");
    dropdown.classList.toggle("dropdown-navbar-wide");
    if (searchBarBig.classList.contains('searchbar-medium-wide')) {
      searchBarBig.focus();
    } else {
      searchBarBig.blur();
    }
    if (dropdown.classList.contains('searchbar-medium-wide')) {
      searchBarBig.focus();
    } else {
      searchBarBig.blur();
    }
  });
}

export { searchBar };
