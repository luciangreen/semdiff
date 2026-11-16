% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, semdiff, [[identity, reverse], [reverse, msort, identity, dedupe, identity]], differs([0, 0], [0, 0], [0])).
io(2, normal, [[]], []).
io(3, run, [[], [0, 9, 3, 5, 9]], [0, 9, 3, 5, 9]).
io(4, semdiff, [[double, dedupe, msort, evens], [double, inc, reverse, reverse, reverse]], differs([0], [0], [1])).
io(5, normal, [[msort, evens]], [msort, evens]).
io(6, run, [[evens, reverse, msort, evens], [5, 9, 3, 4]], [4]).
io(7, semdiff, [[identity, inc, dedupe, dedupe, reverse], [inc, dedupe, reverse]], same).
io(8, normal, [[]], []).
io(9, run, [[reverse, identity], [0]], [0]).
io(10, semdiff, [[evens, inc, inc, dedupe], [reverse, reverse, reverse]], differs([0], [2], [0])).
io(11, normal, [[]], []).
io(12, run, [[dedupe, identity, evens], [5, 8, 2, 1, 4]], [2, 4, 8]).
io(13, semdiff, [[msort], [msort]], same).
io(14, normal, [[identity]], []).
io(15, run, [[inc, inc, inc], []], []).
io(16, semdiff, [[], [reverse, identity, reverse]], same).
io(17, normal, [[inc, reverse]], [inc, reverse]).
io(18, run, [[evens, msort, double], []], []).
io(19, semdiff, [[identity, reverse], [msort, inc, identity, reverse, reverse]], differs([0], [0], [1])).
io(20, normal, [[msort]], [msort]).
io(21, run, [[msort, double], [6, 3, 4]], [6, 8, 12]).
io(22, semdiff, [[evens], []], differs([1], [], [1])).
io(23, normal, [[identity, double, double]], [double, double]).
io(24, run, [[identity, reverse, identity, identity], [9, 1, 3, 2, 2, 0]], [0, 2, 2, 3, 1, 9]).
io(25, semdiff, [[evens, msort, evens, reverse], [dedupe, reverse, msort, double]], differs([1], [], [2])).
io(26, normal, [[evens, reverse]], [evens, reverse]).
io(27, run, [[reverse, msort, inc], [8, 4, 3, 4]], [4, 5, 5, 9]).
io(28, semdiff, [[inc, evens, dedupe], [double, msort, evens, msort]], differs([0], [], [0])).
io(29, normal, [[evens]], [evens]).
io(30, run, [[dedupe], [9, 7, 3, 4, 0, 8]], [0, 3, 4, 7, 8, 9]).
io(31, semdiff, [[reverse, reverse], [reverse, reverse]], same).
io(32, normal, [[double]], [double]).
io(33, run, [[dedupe, reverse], [1, 2, 9, 0, 9, 6]], [9, 6, 2, 1, 0]).
io(34, semdiff, [[reverse, reverse, double, reverse], [double]], differs([0, 1], [2, 0], [0, 2])).
io(35, normal, [[]], []).
io(36, run, [[evens, identity, inc, double, reverse], [2, 8]], [18, 6]).
io(37, semdiff, [[], [evens, identity, dedupe, msort]], differs([1], [1], [])).
io(38, normal, [[]], []).
io(39, run, [[inc], [0, 4, 0, 5, 0, 6]], [1, 5, 1, 6, 1, 7]).
io(40, semdiff, [[reverse, dedupe, reverse, reverse, dedupe], [reverse]], differs([0, 0], [0], [0, 0])).
io(41, normal, [[dedupe]], [dedupe]).
io(42, run, [[identity, reverse, double, identity, inc], []], []).
io(43, semdiff, [[identity], [reverse, reverse]], same).
io(44, normal, [[]], []).
io(45, run, [[double, inc, reverse], []], []).
io(46, semdiff, [[double, inc, identity], [reverse, evens, msort, reverse]], differs([0], [1], [0])).
io(47, normal, [[msort, reverse, reverse]], [msort]).
io(48, run, [[reverse, reverse, identity, dedupe], [7, 3, 7, 5, 5, 9]], [3, 5, 7, 9]).
io(49, semdiff, [[evens], [msort, reverse]], differs([1], [], [1])).
io(50, normal, [[evens]], [evens]).
io(51, run, [[double, dedupe, inc, inc], []], []).
io(52, semdiff, [[reverse, reverse, identity, msort], [msort, evens, reverse]], differs([1], [1], [])).
io(53, normal, [[msort, evens]], [msort, evens]).
io(54, run, [[], []], []).
io(55, semdiff, [[identity, reverse, msort], [msort, msort, msort]], same).
io(56, normal, [[evens, inc, evens]], [evens, inc, evens]).
io(57, run, [[msort, msort, reverse, reverse], [2, 3, 2, 0]], [0, 2, 2, 3]).
io(58, semdiff, [[reverse, msort], [msort]], same).
io(59, normal, [[reverse, dedupe, reverse]], [dedupe, reverse]).
io(60, run, [[msort, double, dedupe, reverse, dedupe], []], []).
io(61, semdiff, [[reverse], [reverse]], same).
io(62, normal, [[msort, identity, evens]], [msort, evens]).
io(63, run, [[], [4, 9]], [4, 9]).
io(64, semdiff, [[inc, identity, msort, msort], [evens, msort, identity, reverse]], differs([0], [1], [0])).
io(65, normal, [[]], []).
io(66, run, [[identity, msort, double], [9]], [18]).
io(67, semdiff, [[reverse, msort, evens, identity], [reverse, reverse, msort, evens]], same).
io(68, normal, [[evens, msort, msort]], [evens, msort]).
io(69, run, [[reverse, evens, reverse, double], [2, 3, 9, 8, 5]], [4, 16]).
io(70, semdiff, [[], []], same).
io(71, normal, [[msort, msort, inc, reverse, reverse]], [msort, inc]).
io(72, run, [[reverse, msort], [6, 5, 0, 4]], [0, 4, 5, 6]).
io(73, semdiff, [[reverse], [reverse]], same).
io(74, normal, [[reverse, double]], [reverse, double]).
io(75, run, [[inc, msort, inc, reverse], [1]], [3]).
io(76, semdiff, [[], [reverse, reverse]], same).
io(77, normal, [[inc]], [inc]).
io(78, run, [[evens], [5, 4]], [4]).
io(79, semdiff, [[], [msort, evens]], differs([1], [1], [])).
io(80, normal, [[dedupe, inc, evens, evens, msort]], [dedupe, inc, evens, msort]).
io(81, run, [[reverse, double, msort, dedupe], [8, 7, 2, 5]], [4, 10, 14, 16]).
io(82, semdiff, [[reverse], [reverse]], same).
io(83, normal, [[inc, reverse, msort, reverse, reverse]], [inc, msort]).
io(84, run, [[dedupe, inc, msort], []], []).
io(85, semdiff, [[reverse, msort, msort, msort, inc], [reverse, reverse, msort, inc]], same).
io(86, normal, [[msort, double, inc, msort, reverse]], [msort, double, inc, msort, reverse]).
io(87, run, [[dedupe, msort, evens, msort], [3, 9]], []).
io(88, semdiff, [[], [inc, identity]], differs([0], [0], [1])).
io(89, normal, [[reverse, double, dedupe, identity, double]], [reverse, double, dedupe, double]).
io(90, run, [[double, identity, msort, msort], [7, 5]], [10, 14]).
io(91, semdiff, [[double, inc, dedupe, msort], [double, inc, dedupe]], same).
io(92, normal, [[]], []).
io(93, run, [[msort, identity, msort, reverse], [8, 8, 8, 0]], [8, 8, 8, 0]).
io(94, semdiff, [[], []], same).
io(95, normal, [[identity, inc, reverse, evens, double]], [inc, reverse, evens, double]).
io(96, run, [[dedupe, double, evens, msort], [6, 0]], [0, 12]).
io(97, semdiff, [[], []], same).
io(98, normal, [[msort, inc, inc, reverse]], [msort, inc, inc, reverse]).
io(99, run, [[reverse, double], [2]], [4]).
io(100, semdiff, [[evens, inc, reverse], [reverse, reverse, evens, inc, reverse]], same).
io(101, normal, [[inc, reverse, double, identity, evens]], [inc, reverse, double]).
io(102, run, [[msort, dedupe, inc], [9, 1]], [2, 10]).
io(103, semdiff, [[inc, msort, double, dedupe], [inc, msort, double, dedupe]], same).
io(104, normal, [[identity, double]], [double]).
io(105, run, [[identity, dedupe, dedupe, msort], [4]], [4]).
io(106, semdiff, [[inc, reverse, identity, dedupe, reverse], [reverse, dedupe]], differs([0], [1], [0])).
io(107, normal, [[inc]], [inc]).
io(108, run, [[reverse], [6]], [6]).
io(109, semdiff, [[msort, dedupe, reverse, msort], [evens, msort, evens, msort]], differs([1], [1], [])).
io(110, normal, [[]], []).
io(111, run, [[dedupe, reverse, msort, evens], [3, 3, 1]], []).
io(112, semdiff, [[reverse, dedupe, identity, double], [dedupe, double]], same).
io(113, normal, [[identity, reverse]], [reverse]).
io(114, run, [[double], [6]], [12]).
io(115, semdiff, [[], []], same).
io(116, normal, [[msort]], [msort]).
io(117, run, [[reverse, reverse, msort, msort, identity], [1, 1, 0]], [0, 1, 1]).
io(118, semdiff, [[evens, evens, msort, evens, msort], [reverse]], differs([1], [], [1])).
io(119, normal, [[msort]], [msort]).
io(120, run, [[msort, inc, reverse, reverse], [0, 6, 3]], [1, 4, 7]).
io(121, semdiff, [[msort, double, evens], [reverse, evens]], differs([1], [2], [])).
io(122, normal, [[reverse, msort, inc, msort, reverse]], [msort, inc, msort, reverse]).
io(123, run, [[msort, msort], [9, 4]], [4, 9]).
io(124, semdiff, [[reverse], [reverse, reverse, reverse]], same).
io(125, normal, [[evens, double, evens]], [evens, double]).
io(126, run, [[inc, identity, msort], [0, 6, 4, 2, 2, 1]], [1, 2, 3, 3, 5, 7]).
io(127, semdiff, [[identity, msort, identity, reverse, reverse], [identity, msort]], same).
io(128, normal, [[msort, evens, dedupe, msort]], [msort, evens, dedupe]).
io(129, run, [[evens, double, msort], [7, 6]], [12]).
io(130, semdiff, [[reverse, identity, reverse], []], same).
io(131, normal, [[identity, double, identity, dedupe, dedupe]], [double, dedupe]).
io(132, run, [[dedupe, msort, identity], [3, 3, 1, 9, 2]], [1, 2, 3, 9]).
io(133, semdiff, [[], [reverse, reverse]], same).
io(134, normal, [[evens]], [evens]).
io(135, run, [[evens, reverse, evens, msort, msort], [6, 7, 9, 3, 5, 3]], [6]).
io(136, semdiff, [[msort, reverse, identity, evens, identity], []], differs([1], [], [1])).
io(137, normal, [[inc, dedupe]], [inc, dedupe]).
io(138, run, [[dedupe, evens], [9, 2]], [2]).
io(139, semdiff, [[inc, reverse], []], differs([0], [1], [0])).
io(140, normal, [[evens, reverse, identity]], [evens, reverse]).
io(141, run, [[evens, inc, reverse, msort, inc], [0, 3]], [2]).
io(142, semdiff, [[msort, double, identity, reverse], [inc, evens, reverse, reverse, reverse]], differs([0], [0], [])).
io(143, normal, [[reverse, reverse, dedupe, inc, dedupe]], [dedupe, inc, dedupe]).
io(144, run, [[], [6, 5]], [6, 5]).
io(145, semdiff, [[], [msort, evens, evens, dedupe, reverse]], differs([1], [1], [])).
io(146, normal, [[]], []).
io(147, run, [[], [3, 4, 1, 3, 0]], [3, 4, 1, 3, 0]).
io(148, semdiff, [[identity, dedupe, msort, reverse], [dedupe, reverse]], same).
io(149, normal, [[]], []).
io(150, run, [[inc, identity, reverse, inc], [6, 7, 2, 5, 7]], [9, 7, 4, 9, 8]).
io(151, semdiff, [[evens, double, identity], [reverse, reverse, evens, double]], same).
io(152, normal, [[inc, reverse, dedupe, msort, inc]], [inc, dedupe, inc]).
io(153, run, [[double, reverse], [5]], [10]).
io(154, semdiff, [[reverse, msort, msort, dedupe, reverse], [dedupe, reverse]], same).
io(155, normal, [[identity]], []).
io(156, run, [[dedupe, dedupe, dedupe], [3, 2, 3, 8, 7, 9]], [2, 3, 7, 8, 9]).
io(157, semdiff, [[evens, identity, evens, evens], [evens]], same).
io(158, normal, [[double, reverse, evens, reverse, inc]], [double, reverse, evens, reverse, inc]).
io(159, run, [[dedupe, inc, double], []], []).
io(160, semdiff, [[inc, msort], [evens]], differs([0], [1], [0])).
io(161, normal, [[evens, msort]], [evens, msort]).
io(162, run, [[reverse], []], []).
io(163, semdiff, [[identity, msort, evens, msort, double], [inc]], differs([0], [0], [1])).
io(164, normal, [[reverse, msort, reverse, msort, evens]], [msort, evens]).
io(165, run, [[], [0, 7, 6, 8, 0]], [0, 7, 6, 8, 0]).
io(166, semdiff, [[dedupe], [reverse, reverse, dedupe]], same).
io(167, normal, [[identity]], []).
io(168, run, [[double], []], []).
io(169, semdiff, [[double, reverse, reverse, inc, reverse], [identity, dedupe, identity]], differs([0], [1], [0])).
io(170, normal, [[]], []).
io(171, run, [[double, identity, double], [7, 0, 4, 3, 4, 6]], [28, 0, 16, 12, 16, 24]).
io(172, semdiff, [[dedupe, reverse, identity, dedupe], [reverse, reverse, dedupe]], same).
io(173, normal, [[reverse, msort, double, reverse, msort]], [msort, double, msort]).
io(174, run, [[double, identity, msort, evens, reverse], [0, 8]], [16, 0]).
io(175, semdiff, [[evens, inc, double, reverse], [reverse, reverse, evens, inc, double, reverse]], same).
io(176, normal, [[identity, msort]], [msort]).
io(177, run, [[dedupe], [2, 1, 0, 6, 4]], [0, 1, 2, 4, 6]).
io(178, semdiff, [[], [evens, inc]], differs([0], [0], [1])).
io(179, normal, [[dedupe, double]], [dedupe, double]).
io(180, run, [[dedupe, identity, msort], [1, 4, 3, 8, 6, 1]], [1, 3, 4, 6, 8]).
io(181, semdiff, [[evens, identity, inc, reverse, double], [reverse, reverse, evens, inc, reverse, double]], same).
io(182, normal, [[]], []).
io(183, run, [[], [6]], [6]).
io(184, semdiff, [[evens, reverse, reverse, double], [msort]], differs([1], [], [1])).
io(185, normal, [[dedupe, inc, dedupe, inc]], [dedupe, inc, dedupe, inc]).
io(186, run, [[msort, msort], [3, 8, 1]], [1, 3, 8]).
io(187, semdiff, [[inc, reverse, msort, identity, msort], [inc, evens]], differs([0], [1], [])).
io(188, normal, [[double, identity]], [double]).
io(189, run, [[reverse, reverse, reverse, double], [0, 5, 2, 4, 7]], [14, 8, 4, 10, 0]).
io(190, semdiff, [[msort, msort, msort, reverse, dedupe], [inc, identity, msort, msort, identity]], differs([0], [0], [1])).
io(191, normal, [[]], []).
io(192, run, [[double, inc, inc, reverse, evens], [3]], [8]).
io(193, semdiff, [[reverse, double, reverse, reverse], [reverse, reverse, reverse, double]], same).
io(194, normal, [[evens]], [evens]).
io(195, run, [[reverse], [2, 6, 8, 8]], [8, 8, 6, 2]).
io(196, semdiff, [[evens, double], [double, double, reverse, reverse]], differs([1], [], [4])).
io(197, normal, [[reverse, double]], [reverse, double]).
io(198, run, [[msort], [8, 1, 8]], [1, 8, 8]).
io(199, semdiff, [[inc, inc], [inc, inc]], same).
io(200, normal, [[]], []).
