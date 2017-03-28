package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.art.consulting.entities.Notification;

public interface NotificationRepository  extends JpaRepository<Notification, Integer>{

}
