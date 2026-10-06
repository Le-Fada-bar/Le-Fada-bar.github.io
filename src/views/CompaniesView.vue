<script setup>
const packages = [
  {
    guests: 80,
    price: '3 500€ TTC',
    picture: '/le_bar.jpg',
    space: 'Privatisation complète du bar',
    items: [
      'Agent de sécurité',
      "Animation d'un cours de danse d'1h30",
      '5 pintes de bière par personne ou équivalent',
      '12 planches charcuterie / fromage',
      '12 grands assortiments de tapas',
      '7 trios de tartinables',
      'Amuse-bouches (traiteur partenaire)',
    ],
  },
  {
    guests: 50,
    price: '1 500€ TTC',
    picture: '/salle_etage.jpg',
    space: "Privatisation de l'étage",
    items: [
      '4 pintes de bière par personne ou équivalent',
      '5 grands assortiments de tapas',
      '3 trios de tartinables',
    ],
  },
  {
    guests: 30,
    price: '1 000€ TTC',
    picture: '/devanture_bar.jpg',
    space: "Privatisation de l'étage",
    items: [
      '3 pintes de bière par personne ou équivalent',
      '10 planches charcuterie / fromage',
      '8 grands assortiments de tapas',
      '4 trios de tartinables',
    ],
  },
  {
    guests: 20,
    price: '500€ TTC',
    picture: '/Lampe.jpg',
    space: 'Privatisation du sous-sol',
    items: [
      '2 pintes de bière par personne ou équivalent',
      '10 planches charcuterie / fromage',
      '1 grand assortiment de tapas',
    ],
  },
];

const contactLink = 'mailto:resafadaparis@gmail.com?subject=Evenement%20entreprise%20au%20Fada';
</script>

<template>
  <main class="companies-page">
    <section class="companies-hero" aria-labelledby="companies-title">
      <img class="companies-logo" src="/fada.svg" alt="Le Fada" />
      <p class="eyebrow">Entreprises · Paris 1er</p>
      <h1 id="companies-title">Vos événements ont leur adresse</h1>
      <p class="hero-intro">Afterwork, pot de départ ou séminaire : le Fada imagine avec vous un moment à votre mesure.</p>
      <a class="hero-action" :href="contactLink">Parlons de votre projet</a>
    </section>

    <section class="offer-section" aria-labelledby="offers-title">
      <div class="section-heading">
        <h2 id="offers-title">Exemples de devis</h2>
        <p>Tous les éléments sont personnalisables pour répondre à vos besoins.</p>
      </div>

      <div class="package-grid">
        <article v-for="offer in packages" :key="offer.guests" class="package">
          <div class="package-picture">
            <img :src="offer.picture" :alt="`Salle du Fada pour le forfait ${offer.guests} personnes`" />
          </div>
          <div class="package-details">
            <div class="package-heading">
              <h3>{{ offer.guests }} personnes</h3>
              <p class="price">{{ offer.price }}</p>
            </div>
            <p class="package-space">{{ offer.space }}</p>
            <ul>
              <li v-for="item in offer.items" :key="item">{{ item }}</li>
            </ul>
          </div>
        </article>
      </div>
    </section>

    <section class="experience-section" aria-labelledby="experience-title">
      <div class="section-heading">
        <h2 id="experience-title">Une soirée qui vous ressemble</h2>
      </div>

      <div class="experience-grid">
        <article class="experience-block">
          <span class="section-number">01</span>
          <h3>Boire</h3>
          <ul>
            <li>6 bières pression, de 6 à 9€ la pinte</li>
            <li>Nombreux cocktails, de 9€ à 13€</li>
            <li>Vins, spiritueux, softs…</li>
          </ul>
        </article>
        <article class="experience-block">
          <span class="section-number">02</span>
          <h3>Manger</h3>
          <ul>
            <li>Planches charcuterie et fromage : 17€</li>
            <li>Tapas frits (parmi 8 choix) : 6€ la portion</li>
            <li>Tartinables (houmous, poivron, tapenade) : 8€</li>
          </ul>
        </article>
        <article class="experience-block">
          <span class="section-number">03</span>
          <h3>Privatiser</h3>
          <ul>
            <li>Salle climatisée à l'étage, jusqu'à 50 personnes</li>
            <li>Cave en sous-sol, jusqu'à 30 personnes</li>
          </ul>
        </article>
        <article class="experience-block">
          <span class="section-number">04</span>
          <h3>Personnaliser</h3>
          <ul>
            <li>Activités à la demande : cours de danse, beer-pong…</li>
            <li>Vidéo-projecteur sur demande</li>
            <li>Prestations sur devis</li>
          </ul>
        </article>
      </div>
    </section>

    <section class="daytime-section" aria-labelledby="daytime-title">
      <div>
        <p class="eyebrow">Nouveauté</p>
        <h2 id="daytime-title">La salle de l'étage, aussi en journée</h2>
        <p>Une demi-journée à 300€, service au bar compris.</p>
      </div>
      <a class="daytime-action" :href="contactLink">Demander un devis <span aria-hidden="true">↗</span></a>
    </section>

    <section class="contact-section" aria-label="Contacter le Fada">
      <p>On construit votre événement ensemble ?</p>
      <a href="mailto:resafadaparis@gmail.com">resafadaparis@gmail.com</a>
      <a href="tel:+33756872078">+33 7 56 87 20 78</a>
      <span>64 rue Jean-Jacques Rousseau, 75001 Paris</span>
    </section>
  </main>
</template>

<style scoped>
.companies-page {
  --companies-ink: var(--theme-black);
  --companies-paper: var(--theme-white);
  --companies-muted: #666;
  --companies-line: #d8d8d8;
  margin: var(--theme-spacing) auto 0;
  max-width: 1000px;
  padding: 0 1rem 3rem;
  color: var(--companies-ink);
}

.companies-hero {
  min-height: 420px;
  margin: 0 -1rem 3rem;
  padding: 4.5rem 1.5rem 3.5rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  color: #fff;
  background-image: linear-gradient(rgb(0 0 0 / 55%), rgb(0 0 0 / 55%)), url('/le_bar.jpg');
  background-size: cover;
  background-position: center 48%;
}

.companies-logo {
  width: 150px;
  height: 90px;
  object-fit: contain;
  margin-bottom: 1.25rem;
}

.eyebrow {
  margin: 0 0 0.65rem;
  color: var(--companies-muted);
  font-size: 0.85rem;
  font-weight: 700;
  letter-spacing: 0;
}

.companies-hero .eyebrow {
  color: var(--companies-paper);
}

.companies-hero h1 {
  max-width: 760px;
  margin: 0;
  font-family: 'Dancing Script', cursive;
  font-size: 3.5rem;
  line-height: 1.08;
}

.hero-intro {
  max-width: 600px;
  margin: 1rem 0 1.75rem;
  text-align: center;
  font-size: 1.1rem;
}

.hero-action,
.daytime-action {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.75rem;
  min-height: 48px;
  padding: 0.7rem 1.25rem;
  background: var(--companies-paper);
  color: var(--companies-ink);
  font-weight: 700;
  text-decoration: none;
}

.hero-action:hover,
.daytime-action:hover {
  background: var(--companies-ink);
  color: var(--companies-paper);
}

.section-heading {
  margin: 0 auto 1.75rem;
  text-align: center;
}

.section-heading h2,
.daytime-section h2 {
  margin: 0;
  font-family: 'Dancing Script', cursive;
  font-size: 2.5rem;
  line-height: 1.15;
}

.section-heading > p:last-child {
  margin: 0.5rem 0 0;
}

.package-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 0 1.5rem;
  align-items: start;
}

.package {
  min-width: 0;
  padding-bottom: 1rem;
}

.package-picture {
  width: 88%;
  aspect-ratio: 4 / 3;
}

.package:nth-child(even) .package-picture {
  margin-left: auto;
}

.package-picture img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.package-details {
  position: relative;
  z-index: 1;
  width: 82%;
  min-height: 140px;
  margin-top: -2.5rem;
  padding: 1.25rem;
  background: var(--companies-ink);
  color: var(--companies-paper);
}

.package:nth-child(odd) .package-details {
  margin-left: auto;
}

.package-heading {
  display: flex;
  flex-wrap: wrap;
  align-items: baseline;
  justify-content: space-between;
  gap: 0.3rem 1rem;
}

.package h3,
.experience-block h3 {
  margin: 0;
  font-family: 'Dancing Script', cursive;
  font-size: 1.65rem;
}

.price {
  margin: 0;
  color: var(--companies-paper);
  font-weight: 700;
}

.package-space {
  margin: 0.4rem 0 0.8rem;
  color: #ddd;
}

.package ul,
.experience-block ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.package li,
.experience-block li {
  position: relative;
  padding-left: 1.15rem;
  margin-top: 0.45rem;
}

.package li::before,
.experience-block li::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0.65em;
  width: 6px;
  height: 6px;
  background: currentColor;
}

.footnote {
  margin: 0.7rem 0 0;
  text-align: right;
  font-style: italic;
}

.experience-section {
  padding-top: 4rem;
}

.experience-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  border-top: 1px solid var(--companies-line);
  border-left: 1px solid var(--companies-line);
}

.experience-block {
  position: relative;
  min-height: 185px;
  padding: 1.5rem;
  border-right: 1px solid var(--companies-line);
  border-bottom: 1px solid var(--companies-line);
}

.section-number {
  display: block;
  margin-bottom: 0.5rem;
  color: var(--companies-muted);
  font-size: 0.8rem;
  font-weight: 700;
}

.experience-block h3 {
  margin-bottom: 0.65rem;
}

.daytime-section {
  margin-top: 3.5rem;
  padding: 1.5rem 1.75rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1.5rem;
  background: var(--companies-ink);
  color: var(--companies-paper);
}

.daytime-section .eyebrow {
  color: #ddd;
}

.daytime-section > div > p:last-child {
  margin: 0.55rem 0 0;
}

.contact-section {
  margin-top: 3.5rem;
  padding: 2rem 1.5rem;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
  gap: 0.7rem 1.5rem;
  background: var(--companies-ink);
  color: var(--companies-paper);
  text-align: center;
}

.contact-section p {
  flex-basis: 100%;
  margin: 0;
  text-align: center;
  font-size: 1.35rem;
  font-weight: 700;
}

.contact-section a {
  color: var(--companies-paper);
  text-decoration: underline;
  text-underline-offset: 3px;
}

@media (max-width: 680px) {
  .companies-page {
    padding: 0 1rem 2rem;
  }

  .companies-hero {
    min-height: 420px;
    margin: 0 -1rem 2.5rem;
    padding-right: 1rem;
    padding-left: 1rem;
  }

  .companies-hero h1 {
    font-size: 2.5rem;
  }

  .section-heading h2,
  .daytime-section h2 {
    font-size: 2rem;
  }

  .package-grid,
  .experience-grid {
    grid-template-columns: 1fr;
  }

  .package-picture {
    width: 92%;
  }

  .package-details {
    width: 88%;
    margin-top: -1.5rem;
    padding: 1rem;
  }

  .package:nth-child(even) .package-details {
    margin-left: auto;
  }

  .experience-block {
    min-height: auto;
  }

  .daytime-section {
    align-items: flex-start;
    flex-direction: column;
  }
}
</style>