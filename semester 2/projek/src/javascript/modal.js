let tambah_data = document.getElementById('tambah-data');

let modal = document.getElementById('modal');

tambah_data.addEventListener('click', () => {
    document.body.scrollTop = '0';
    document.documentElement.scrollTop = '0';
    modal.classList.remove('hide');
    document.body.style.overflowY = 'hidden';
})

modal.addEventListener('click', (e) => {
    if(e.target.classList.contains('modal')) {
        modal.classList.add('hide');
        document.body.style.overflowY = 'visible';
    }
})