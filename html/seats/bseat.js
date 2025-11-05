const students = [
	"권나연",
	// "권순범",
	"김도이",
	"김선우",
	"김선주",
	"김채현",
	"남소미",
	"박성원",
	"설지윤",
	"손세영",
	"신호림",
	"유민영",
	"유지예",
	"유지현",
	"유하임",
	"이동현",
	"이민지",
	"이승빈",
	"이정수",
	"전유진",
	"정그린",
	"한수정",
	"허혁",
];
const setStudents = [];
const inps = document.getElementsByTagName("input");
console.log("***********", inps);

// const seats = [...inps].filter(inp => !inp.value);
// console.log('🚀  seats:', seats);
// for (let i = 0; i < students.length; i++) seats[i].value = students[i];

function set(student) {
	const seats = [...inps].filter((inp) => !inp.value);
	// console.log('🚀  seats:', seats.length);
	const seat = Math.floor(Math.random() * seats.length);
	// console.log('🚀  seat:', seat);
	seats[seat].value = student;
	setStudents.push(student);
}

function start() {
	let idx = 0;
	const intl = setInterval(() => {
		const sts = students.filter((s) => !setStudents.includes(s));
		if (!sts?.length) clearInterval(intl);
		// set(students[idx++]);
		idx = Math.floor(sts.length * Math.random());
		set(sts[idx]);
		// if (idx >= students.length) clearInterval(intl);
	}, 100);
}
