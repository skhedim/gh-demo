const request = require("supertest");
const app = require("../index");

describe("GET /", () => {
  it("respond with Hello Capgemini via Github Actions", (done) => {
    request(app).get("/").expect("Hello Capgemini via Github Actions", done);
  })
});
