console.log('hello')

function hideShowPassword() {
    const inputPassword =
        document.getElementById('password')
    
        const passwordEye = document.getElementById('password-eye')

        console.log(passwordEye.classList)

    // se o type for senha password -> muda pra text
    // se o type for text -> muda pra password

    if (inputPassword.type === 'password') {
        inputPassword.type = 'text'

        passwordEye.classList.replace('bi bi-eye-fill', 'bi bi-eye-slash-fill')


    } else {
        inputPassword.type = 'password'

        console.log(inputPassword.type)
        inputPassword.type = 'text'
        console.log(inputPassword.type)

        passwordEye.classList.replace('bi bi-eye-fill', 'bi bi-eye-slash-fill')


    }
        

}