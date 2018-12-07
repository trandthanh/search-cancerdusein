function searchBar() {
  const searchIcon = document.querySelector('.search-button-js');
  // const searchBarBig = document.querySelector('.searchbar-medium');

  const dropdown = document.querySelector('.dropdown-navbar');
  const dropdown2 = document.querySelector('.dropdown-navbar-2');
  const dropdownb = document.querySelector('.search-button-submit');


  // const input = document.querySelector('input');
  searchIcon.addEventListener("click", (event) => {
    event.preventDefault();
    dropdown.value = "";
    dropdown2.value = "";

    // searchBarBig.classList.toggle("searchbar-medium-wide");
    dropdown.classList.toggle("dropdown-navbar-wide");
    dropdown2.classList.toggle("dropdown-navbar-wide-2");
    dropdownb.classList.toggle("search-button-submit-v");

    // if (searchBarBig.classList.contains('searchbar-medium-wide')) {
    //   searchBarBig.focus();
    // } else {
    //   searchBarBig.blur();
    // }
    if (dropdown.classList.contains('dropdown-navbar-wide')) {
      dropdown.focus();
    } else {
      dropdown.blur();
    }

    if (dropdown2.classList.contains('dropdown-navbar-wide')) {
      dropdown2.focus();
    } else {
      dropdown2.blur();
    }

  });
}

export { searchBar };
