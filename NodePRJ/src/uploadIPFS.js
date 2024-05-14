import http from "http";
import { Server } from "socket.io";
import express from "express";

const fs = require('fs');
const ipfsClient = require('ipfs-http-client');

// IPFS 클라이언트 연결 설정
const ipfs = ipfsClient({
  host: 'ipfs.infura.io',
  port: 5001,
  protocol: 'https'
});

// 이미지 파일 경로
const imagePath = 'path/to/image.jpg';

// 이미지를 IPFS에 업로드하는 함수
async function uploadImageToIPFS(imagePath) {
  try {
    // 이미지 파일 읽기
    const image = fs.readFileSync(imagePath);

    // IPFS에 이미지 업로드
    const result = await ipfs.add(image);

    // 업로드된 이미지의 IPFS 해시 반환
    const ipfsHash = result.cid.toString();

    console.log('Image uploaded to IPFS. IPFS hash:', ipfsHash);
    return ipfsHash;
  } catch (error) {
    console.error('Error uploading image to IPFS:', error);
  }
}

// 이미지 업로드 함수 호출
uploadImageToIPFS(imagePath);