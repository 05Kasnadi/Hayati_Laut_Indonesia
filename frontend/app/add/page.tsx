"use client";

import axios from "axios";
import React, { useState } from "react";

export default function AddPage() {
  // buat state untuk untuk setiap komponen
  const [getNPM, setNPM] = useState("");
  const [getNama, setNama] = useState("");
  const [getTelepon, setTelepon] = useState("");
  const [getJurusan, setJurusan] = useState("");

  // buat arrow function untuk "setPost"
  const setPost = () => {
    // jika ada salah satu komponen tidak diisi
    if (getNPM == "" || getNama == "" || getTelepon == "" || getJurusan == "") {
      alert("Seluruh Data Wajib Diisi !");
    }
    // jika semua komponen diisi
    else {
      // kirim ke service "POST" backend
      // process.env.API diambil dari file "next.config.mjs"
      axios
        .post(`${process.env.API}/save`, {
          npm: getNPM,
          nama: getNama,
          telepon: getTelepon,
          jurusan: getJurusan,
        })
        .then((response) => {
          // ambil nilai "message" dari server
          alert(response.data.message);

          // jika nilai "error" = 0
          if (response.data.error == 0) {
            // panggil fungsi "setRefresh"
            setRefresh();
          }
        });
    }
  };

  // buat arrow function untuk "btn_refresh"
  const setRefresh = () => {
    location.reload();
  };

  return (
    <div>
      {/* area komponen */}
      <section className="flex items-center mb-4">
        {/* area label */}
        <section className="w-1/4">
          <label htmlFor="txt_npm">No</label>
        </section>

        {/* area input */}
        <section className="w-3/4">
          <input
            type="text"
            name=""
            id="txt_npm"
            className="w-full border-2 border-slate-300 px-3 py-2 rounded-lg outline-none focus:border-sky-500"
            placeholder="Isi Nomor"
            onChange={(e) => setNPM(e.target.value)}
          />
        </section>
      </section>

      {/* area komponen */}
      <section className="flex items-center mb-4">
        {/* area label */}
        <section className="w-1/4">
          <label htmlFor="txt_nama">Nama Hewan</label>
        </section>

        {/* area input */}
        <section className="w-3/4">
          <input
            type="text"
            name=""
            id="txt_nama"
            className="w-full border-2 border-slate-300 px-3 py-2 rounded-lg outline-none focus:border-sky-500"
            placeholder="Isi Data Nama Hewan"
            onChange={(e) => setNama(e.target.value)}
          />
        </section>
      </section>

      {/* area komponen */}
      <section className="flex items-center mb-4">
        {/* area label */}
        <section className="w-1/4">
          <label htmlFor="txt_telepon">Lokalitas</label>
        </section>

        {/* area input */}
        <section className="w-3/4">
          <input
            type="text"
            name=""
            id="txt_telepon"
            className="w-full border-2 border-slate-300 px-3 py-2 rounded-lg outline-none focus:border-sky-500"
            placeholder="Isi Lokalitas Hewan"
            onChange={(e) => setTelepon(e.target.value)}
          />
        </section>
      </section>

      {/* area komponen */}
      <section className="flex items-center mb-4">
        {/* area label */}
        <section className="w-1/4">
          <label htmlFor="cbo_jurusan">Jenis</label>
        </section>

        {/* area input */}
        <section className="w-3/4">
          <select
            name=""
            id="cbo_jurusan"
            className="w-full border-2 border-slate-300 px-3 py-2 rounded-lg outline-none focus:border-sky-500 bg-white"
            onChange={(e) => setJurusan(e.target.value)}
          >
            <option value="">Pilih Jenis Hewan</option>
            <option value="IF">Mamalia</option>
            <option value="SI">Karnivora</option>
            <option value="TI">Herbivora</option>
            <option value="TK">Omnivora</option>
            <option value="SIA">Bertelur</option>
          </select>
        </section>
      </section>

      {/* area komponen */}
      <section className="flex items-center">
        {/* area label */}
        <section className="w-1/4"></section>

        {/* area button */}
        <section className="w-3/4">
          <button
            id="btn_simpan"
            className="mr-1 bg-red-500 px-5 py-3 w-40 rounded-full text-white active:bg-black active:text-sky-300 text-center"
            onClick={setPost}
          >
            Simpan
          </button>

          <button
            id="btn_refresh"
            className="ml-1 border-2 border-red-500 px-5 py-3 w-40 rounded-full text-center"
            onClick={setRefresh}
          >
            Refresh
          </button>
        </section>
      </section>
    </div>
  );
}
