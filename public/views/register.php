<div id="modal_register" class="container">
  <div class="modal">
    <div class="figure">
      <h1 class="modal__title">Registro</h1>
    </div>
    <form class="form__container">
      <div class="form__group">
        <label for="names">Nombre(s): </label>
        <input id="names" class="input" type="text" placeholder="Nombre(s)" />
      </div>
      <div class="form__group">
        <label for="last_name">Apellidos: </label>
        <input id="last_name" class="input" type="text" placeholder="Apellidos" />
      </div>
      <div class="radio_button">
        <span>Sexo: </span>
        <input type="radio" id="male" name="gender" value="male" />
        <label for="male">M</label>
        <input type="radio" id="female" name="gender" value="female" />
        <label for="female">F</label>
      </div>
      <div class="form__group">
        <label for="date">Fecha de nacimiento: </label>
        <input id="date" class="input" type="date" />
      </div>
      <div class="form__group">
        <label for="email">Correo electrónico: </label>
        <input id="email" class="input" type="email" />
      </div>
      <div class="form__group">
        <label for="conf_email">Confirmar correo electrónico: </label>
        <input id="conf_email" class="input" type="email" />
      </div>
      <div class="form__group">
        <label for="pass">Contraseña: </label>
        <input id="pass" class="input" type="password" placeholder="Contraseña" />
      </div>
      <div class="form__group">
        <label for="conf_pass">Confirmar contraseña: </label>
        <input id="conf_pass" class="input" type="password" placeholder="Contraseña" />
      </div>
      <div class="form__buttons">
        <button>Iniciar Sesión</button>
        <button type="button" id="cancel_register">Cancelar</button>
      </div>
    </form>
  </div>
</div>