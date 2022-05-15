// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"






addEventListener("direct-upload:initialize", event => {
  const { target, detail } = event
  const { id, file } = detail
  target.insertAdjacentHTML("beforebegin", `
    <div id="direct-upload-${id}" class="direct-upload direct-upload--pending">
      <div id="direct-upload-progress-${id}" class="direct-upload__progress" style="width: 0%"></div>
      <span class="direct-upload__filename"></span>
    </div>
  `)
  target.previousElementSibling.querySelector(`.direct-upload__filename`).textContent = file.name
})

addEventListener("direct-upload:start", event => {
  const { id } = event.detail
  const element = document.getElementById(`direct-upload-${id}`)
  element.classList.remove("direct-upload--pending")
})

addEventListener("direct-upload:progress", event => {
  const { id, progress } = event.detail
  const progressElement = document.getElementById(`direct-upload-progress-${id}`)
  progressElement.style.width = `${progress}%`
})

addEventListener("direct-upload:error", event => {
  event.preventDefault()
  const { id, error } = event.detail
  const element = document.getElementById(`direct-upload-${id}`)
  element.classList.add("direct-upload--error")
  element.setAttribute("title", error)
})

addEventListener("direct-upload:end", event => {
  const { id } = event.detail
  const element = document.getElementById(`direct-upload-${id}`)
  element.classList.add("direct-upload--complete")
})

function initTextAnimation(sentences, typingInterval = 100, sentenceInterval = 2000, customTarget = null) {
      const target = customTarget !== null ? customTarget : document.querySelector("#animation-target");
      let sentenceIndex = 1;

      setInterval(() => {
        const sentence = sentences[sentenceIndex];
        target.textContent = "";

        for (let i = 0; i < sentence.length; i++) {
          setTimeout(() => {
            target.textContent += sentence[i]
          }, i * typingInterval, i);
        };

        sentenceIndex++;

        if (sentenceIndex === sentences.length) {
          sentenceIndex = 0;
        };
      }, sentenceInterval, sentenceIndex);
    };
// 1er param : un tableau avec les phrases à animer
// 2ème param (optionnel) : temps en ms entre chaque lettre tappée
// 3ème param (optionnel) : temps en ms entre chaque changement de phrase
// 4ème param (optionnel) : si tu veux utiliser un autre élément du dom (c'est à dire un noeud HTML sans l'id "animation-target", tu peux faire un document.getElement... et envoyer la valeur dans ce 4ème paramètre)
initTextAnimation(["INTERACTIVE", "DIGITAL", "EVERLASTING"], 100, 3000);
