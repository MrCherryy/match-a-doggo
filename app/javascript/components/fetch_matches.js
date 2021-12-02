import { csrfToken } from "@rails/ujs";

const fetchMatches = (matchInfos) => {
  fetch('/matches', {
    method: 'POST',
    headers: { "Content-Type": "application/json", 'X-CSRF-Token': csrfToken() },
    body: JSON.stringify({
      match: {
        matching_dog_id: matchInfos.matchingDog,
        matched_dog_id: matchInfos.matchedDog,
        status: "pending"
      }
    })
  })
    .then(response => response.text())
    .then(data => console.log(data));
}

export { fetchMatches }
