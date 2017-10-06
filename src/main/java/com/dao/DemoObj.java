package com.dao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Created by lyz on 2017-10-6.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DemoObj implements Serializable{
    private Long id;
    private String name;
}
