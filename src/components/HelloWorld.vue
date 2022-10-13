<template>
  <section>
    <div class="container">
      <div class="row">
        <div class="col">
          <h1>Mascotas</h1>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Nombre mascota</label>
          </div>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Fecha de Nacimiento</label>
          </div>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Color</label>
          </div>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Apodo</label>
          </div>
          <button type="button" class="btn btn-success">Agendar cita</button>
        </div>
        <div class="col">
          <h1>Productos</h1>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Nombre producto</label>
          </div>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Descripción</label>
          </div>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Precio</label>
          </div>
          <div class="form-floating mb-3">
            <select class="form-select" aria-label="Default select example">
              <option selected>Estado</option>
              <option value="1">Activo</option>
              <option value="2">Inactivo</option>
            </select>
          </div>
          <button type="button" class="btn btn-success">Agregar</button>
        </div>
        <div class="col">
          <h1>Razas</h1>
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
              <label for="floatingInput">Descripción</label>
            </div>
            <div class="form-floating mb-3">
              <select class="form-select" aria-label="Default select example">
                <option selected>Estado</option>
                <option value="1">No extinguido</option>
                <option value="2">Extinta</option>
              </select>
            </div>
            <button type="button" class="btn btn-success">Agregar</button>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
section{
  padding: 3rem;
  margin: auto;
}
</style>
