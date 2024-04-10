# Apartment App

**Date**: 4/9/2024

## Purpose

This project is a decoupled React and Rails API application designed to facilitate the listing of apartments available for rent.

As a developer, I have been commissioned to create an application that lists apartments available for rent. As a visiting user of the application, I can see a list of all available apartments. I can click on an apartment listing and see more information about that apartment. If I want to list an apartment for rent, I can create an account and log into the application. If I am logged in, I can add a new apartment. As a logged-in user, I can see a list of all my apartments with the ability to edit or delete my listings.

## App Setup

- To set up the backend, run the following command:
  ```
  rails new apartment-app-backend --api -d postgresql -T
  ```
- Start the application with:
  ```
  rails s
  ```

## User Authentication

- Devise
- JWT

## Dependencies

- CORS
- JWT
- RSpec

Feel free to reach out if you have any questions or need further assistance.
