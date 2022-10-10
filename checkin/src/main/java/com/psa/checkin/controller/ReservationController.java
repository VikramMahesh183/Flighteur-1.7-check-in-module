package com.psa.checkin.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.psa.checkin.integration.ReservationRestfulClient;
import com.psa.checkin.integration.dto.Reservation;
import com.psa.checkin.integration.dto.ReservationUpdateRequest;

@Controller
public class ReservationController {

	@Autowired
	private ReservationRestfulClient restClient;

	@RequestMapping("/StartCheckIn")
	public String showCheckIn() {
		return "StartCheckin";
	}

	@RequestMapping("/proceedCheckIn")
	public String proceedCheckIn(@RequestParam("id") Long id, ModelMap modelMap) {
		Reservation reservation = restClient.findReservation(id);
		modelMap.addAttribute("reservation", reservation);
		return "displayReservation";
	}

	@RequestMapping("/proceedToCheckIn")
	public String proceedCheckIn(@RequestParam("id") Long id, @RequestParam("numberOfBags") int numberOfBags,
			@RequestParam("checkedIn") boolean checkedIn) {
		ReservationUpdateRequest request = new ReservationUpdateRequest();
		request.setId(id);
		request.setNumberOfBags(numberOfBags);
		request.setCheckedIn(checkedIn);
		restClient.updateReservation(request);
		return "confirmReservation";

	}
}
