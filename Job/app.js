let visaSelect = document.getElementById("visaType");
let countrySelect = document.getElementById("country");
let universityText = document.getElementById("university");
let emailText = document.getElementById("email");
let pIncrement = document.querySelector(".check-mark");
let fullWidth = document.querySelector(".-full-width");
let completeLine = document.querySelector(".complete-line");
let checkMark = document.querySelector(".check-mark");

let numPercentage = 0;

const validStatus = {
	visaType: false,
	country: false,
	university: false,
};

const updatePercent = (status) => {
	status ? (numPercentage += 25) : (numPercentage -= 25);
};

const update = (state) => {
	updatePercent(state);
};

//Check for the select elements
[visaSelect, countrySelect].forEach((element) => {
	element.addEventListener("change", ({ target }) => {
		const elementStatus = validStatus[target.id];
		if (target.value) {
			if (!elementStatus) {
				validStatus[target.id] = !elementStatus;
				update(!elementStatus);
			}
		} else {
			if (elementStatus) {
				validStatus[target.id] = !elementStatus;
				update(!elementStatus);
			}
		}
		fullWidth.style.width = `${numPercentage}%`;
		completeLine.style.width = `${numPercentage}%`;
		checkMark.innerHTML = `${numPercentage}%`;
	});
});

universityText.addEventListener("keyup", ({ target }) => {
	const elementStatus = validStatus[target.id];
	if (target.value.length > 2 && target.value.length < 32) {
		if (!elementStatus) {
			validStatus[target.id] = !elementStatus;
			update(!elementStatus);
		}
	} else {
		if (elementStatus) {
			validStatus[target.id] = !elementStatus;
			update(!elementStatus);
		}
	}
	fullWidth.style.width = `${numPercentage}%`;
	completeLine.style.width = `${numPercentage}%`;
	checkMark.innerHTML = `${numPercentage}%`;
});

function ValidateEmail(email) {
	var mailformat =
		/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/;

	if (email.trim().match("a..a@a.a")) {
		return false;
	}
	if (email.trim().match(mailformat)) {
		return true;
	} else {
		return false;
	}
}

emailText.addEventListener("keyup", ({ target }) => {
	const elementStatus = validStatus[target.id];
	if (ValidateEmail(emailText.value)) {
		if (!elementStatus) {
			validStatus[target.id] = !elementStatus;
			update(!elementStatus);
		}
	} else {
		if (elementStatus) {
			validStatus[target.id] = !elementStatus;
			update(!elementStatus);
		}
	}
	fullWidth.style.width = `${numPercentage}%`;
	completeLine.style.width = `${numPercentage}%`;
	checkMark.innerHTML = `${numPercentage}%`;
});
