<script lang="ts">
  import passportHeadshot from "$lib/assets/passport_headshot.jpg";
</script>

<h1>Welcome to Bailey Town</h1>
<h2>It's my birthday. Happy birthday to us all</h2>
<img id="passport-headshot" src={passportHeadshot} alt="Passport headshot" />

<style>
  #passport-headshot {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 50%;
    border: 4px solid #009;
  }
</style>
