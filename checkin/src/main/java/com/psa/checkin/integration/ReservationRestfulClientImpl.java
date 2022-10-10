package com.psa.checkin.integration;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.psa.checkin.integration.dto.Reservation;
import com.psa.checkin.integration.dto.ReservationUpdateRequest;

@Component
public class ReservationRestfulClientImpl implements ReservationRestfulClient {

	@Override
	public Reservation findReservation(Long id) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.getForObject("http://localhost:8084/flights/reservation/" + id,
				Reservation.class);// take the json object and map that to reservation class
		return reservation;
	}

	@Override
	public Reservation updateReservation(ReservationUpdateRequest request) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.postForObject("http://localhost:8084/flights/reservation", request, Reservation.class);
		return reservation;
	}

}
