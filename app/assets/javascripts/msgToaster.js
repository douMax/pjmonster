function msgShow(content, classNames) {
  const toaster = document.getElementById('msg-toaster')
  toaster.classList.add('show')
  classNames.forEach(element => {
    toaster.classList.add(element)
  })
}



