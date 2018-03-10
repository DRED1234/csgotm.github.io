$(document).ready(function() {
   // Masquer par défaut les éléments (s'ils ne le sont pas déjà en CSS)
   $('.spoiler').hide();

   // Gestion de l'événement clic
   $('.spoiler-link').on('click', function(e) {
      // Valeur de l'attribut href à afficher
      var idSpoiler = $(this).attr('href'),
         classSelect = 'spoiler-link--active';
		 

      // Donner une classe au lien pour le styliser
      // S'il y a déjà la classe, la retirer, sinon l'appliquer
      $(this).toggleClass(classSelect);

      // Afficher/Masquer le spoiler
      $(idSpoiler).slideToggle(400);

      // Empêche le déclenchement du lien
      e.preventDefault();
   });
});

$(document).ready(function() {
   // Masquer par défaut les éléments (s'ils ne le sont pas déjà en CSS)
   $('.spoiler').hide();

   // Gestion de l'événement clic
   $('.spoiler-link2').on('click', function(e) {
      // Valeur de l'attribut href à afficher
      var idSpoiler = $(this).attr('href'),
         classSelect = 'spoiler-link2--active';
		 

      // Donner une classe au lien pour le styliser
      // S'il y a déjà la classe, la retirer, sinon l'appliquer
      $(this).toggleClass(classSelect);

      // Afficher/Masquer le spoiler
      $(idSpoiler).slideToggle(400);

      // Empêche le déclenchement du lien
      e.preventDefault();
   });
});