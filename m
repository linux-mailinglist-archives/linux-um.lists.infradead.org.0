Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033D415A78F
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 12:17:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JvCQGVnj454IhP3y8ibZXThqHb4fo3bfoqo56lg+Bpo=; b=e6QCvxUzxCVR1N9Xo5C9uhnrZ
	9dznE8Xz4UU2qhpbaPu+7peWg0WPmnCt/ZZepEmZo3Bbh/tBiWuBUt+1GB2Nl59HZDiPy7dx6i0t8
	RW5y0Y3jjYOtPj6xLsDde810iiheU005bw5hiFESvBIEDYqBinMBSE2/cwdDd1IKf4p7DAg/qTYco
	38rHEMPTD9kNJLg+I5DCpVN+JMoLw9DgO4lPzS5Om3aw0gC1PI6cUfKy1P2sR4ViZO7Rao5eK+Zki
	WGSadgf5qXySzeyvu1Gj2lDCU84F+jD8X2kvxbPt2l7DD9TSNZ//cmn8jZCWSOLfqagUricEdMggO
	Bgwfgzpkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1q1V-00075w-QV; Wed, 12 Feb 2020 11:17:41 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1q1K-0006wW-M2
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 11:17:32 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1q1I-00045S-NZ; Wed, 12 Feb 2020 11:17:29 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j1q1G-00027b-Dq; Wed, 12 Feb 2020 11:17:28 +0000
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <8e730fe1-3129-de8d-bcb6-d5e10695238a@cambridgegreys.com>
 <20200212051913-mutt-send-email-mst@kernel.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <d0a531e4-5caa-a92b-385a-ab7c209293f8@cambridgegreys.com>
Date: Wed, 12 Feb 2020 11:17:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212051913-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_031730_732338_CCF4759B 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAxMi8wMi8yMDIwIDEwOjE5LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24gV2Vk
LCBGZWIgMTIsIDIwMjAgYXQgMTA6MDM6MzFBTSArMDAwMCwgQW50b24gSXZhbm92IHdyb3RlOgo+
Pgo+Pgo+PiBPbiAxMS8wMi8yMDIwIDEwOjM3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+
PiBPbiBUdWUsIEZlYiAxMSwgMjAyMCBhdCAwNzo0MjozN0FNICswMDAwLCBBbnRvbiBJdmFub3Yg
d3JvdGU6Cj4+Pj4gT24gMTEvMDIvMjAyMCAwMjo1MSwgSmFzb24gV2FuZyB3cm90ZToKPj4+Pj4K
Pj4+Pj4gT24gMjAyMC8yLzExIOS4iuWNiDEyOjU1LCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+Pj4+
Pgo+Pj4+Pj4KPj4+Pj4+IE9uIDA5LzEyLzIwMTkgMTA6NDgsIGFudG9uLml2YW5vdkBjYW1icmlk
Z2VncmV5cy5jb20gd3JvdGU6Cj4+Pj4+Pj4gRnJvbTogQW50b24gSXZhbm92IDxhbnRvbi5pdmFu
b3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+Pj4+Pj4+Cj4+Pj4+Pj4gU29tZSBvZiB0aGUgZnJhbWVz
IG1hcmtlZCBhcyBHU08gd2hpY2ggYXJyaXZlIGF0Cj4+Pj4+Pj4gdmlydGlvX25ldF9oZHJfZnJv
bV9za2IoKSBoYXZlIG5vIEdTT19UWVBFLCBubwo+Pj4+Pj4+IGZyYWdtZW50cyAoZGF0YV9sZW4g
PSAwKSBhbmQgbGVuZ3RoIHNpZ25pZmljYW50bHkgc2hvcnRlcgo+Pj4+Pj4+IHRoYW4gdGhlIE1U
VSAoNzUyIGluIG15IGV4cGVyaW1lbnRzKS4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoaXMgaXMgb2JzZXJ2
ZWQgb24gcmF3IHNvY2tldHMgcmVhZGluZyBvZmYgdkV0aCBpbnRlcmZhY2VzCj4+Pj4+Pj4gaW4g
YWxsIDQueCBhbmQgNS54IGtlcm5lbHMgSSB0ZXN0ZWQuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGVzZSBm
cmFtZXMgYXJlIHJlcG9ydGVkIGFzIGludmFsaWQgd2hpbGUgdGhleSBhcmUgaW4gZmFjdAo+Pj4+
Pj4+IGdzby1sZXNzIGZyYW1lcy4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoaXMgcGF0Y2ggbWFya3MgdGhl
IHZuZXQgaGVhZGVyIGFzIG5vLUdTTyBmb3IgdGhlbSBpbnN0ZWFkCj4+Pj4+Pj4gb2YgcmVwb3J0
aW5nIGl0IGFzIGludmFsaWQuCj4+Pj4+Pj4KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbnRvbiBJ
dmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+Pj4+Pj4gLS0tCj4+Pj4+
Pj4gICDCoCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19uZXQuaCB8IDggKysrKysrLS0KPj4+Pj4+PiAg
IMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+
Pj4KPj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNs
dWRlL2xpbnV4L3ZpcnRpb19uZXQuaAo+Pj4+Pj4+IGluZGV4IDBkMWZlOTI5N2FjNi4uZDkwZDVj
ZmYxYjlhIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4+
Pj4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4+PiBAQCAtMTEyLDgg
KzExMiwxMiBAQCBzdGF0aWMgaW5saW5lIGludAo+Pj4+Pj4+IHZpcnRpb19uZXRfaGRyX2Zyb21f
c2tiKGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsCj4+Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RDUFY0Owo+Pj4+
Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UgaWYgKHNpbmZvLT5nc29fdHlwZSAmIFNLQl9H
U09fVENQVjYpCj4+Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190
eXBlID0gVklSVElPX05FVF9IRFJfR1NPX1RDUFY2Owo+Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBl
bHNlCj4+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+
Pj4gK8KgwqDCoMKgwqDCoMKgIGVsc2Ugewo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlmIChza2ItPmRhdGFfbGVuID09IDApCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX05PTkU7Cj4+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+
Pj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoc2luZm8tPmdzb190eXBlICYgU0tCX0dTT19U
Q1BfRUNOKQo+Pj4+Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGRyLT5nc29fdHlw
ZSB8PSBWSVJUSU9fTkVUX0hEUl9HU09fRUNOOwo+Pj4+Pj4+ICAgwqDCoMKgwqDCoCB9IGVsc2UK
Pj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IHBpbmcuCj4+Pj4+Pgo+Pj4+Pgo+Pj4+PiBEbyB5b3UgbWVh
biBnc29fc2l6ZSBpcyBzZXQgYnV0IGdzb190eXBlIGlzIG5vdD8gTG9va3MgbGlrZSBhIGJ1Zwo+
Pj4+PiBlbHNld2hlcmUuCj4+Pj4+Cj4+Pj4+IFRoYW5rcwo+Pj4+Pgo+Pj4+Pgo+Pj4+IFllcy4K
Pj4+Pgo+Pj4+IEkgY291bGQgbm90IHRyYWNlIGl0IHdoZXJlIGl0IGlzIGNvbWluZyBmcm9tLgo+
Pj4+Cj4+Pj4gSSBzZWUgaXQgd2hlbiBkb2luZyByZWN2bW1zZyBvbiByYXcgc29ja2V0cyBpbiB0
aGUgVU1MIHZlY3RvciBuZXR3b3JrCj4+Pj4gZHJpdmVycy4KPj4+Pgo+Pj4KPj4+IEkgdGhpbmsg
d2UgbmVlZCB0byBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdGhlcmUsIGxvdHMgb2Ygb3Ro
ZXIgdGhpbmdzCj4+PiBjYW4gYnJlYWsgb3RoZXJ3aXNlLgo+Pj4gSnVzdCBwcmludGluZyBvdXQg
c2tiLT5kZXYtPm5hbWUgc2hvdWxkIGRvIHRoZSB0cmljaywgbm8/Cj4+Cj4+IEkgd2lsbCByZWJ1
aWxkIG15IHJpZyBhbmQgcmV0ZXN0IChpdCdzIGJlZW4gYSB3aGlsZSBzaW5jZSBJIHdvcmtlZCBv
biB0aGlzIGJ1ZykuCj4+Cj4+IEluIHRoZW9yeSwgaXQgc2hvdWxkIGJlIHZldGggLSB0aGUgdGVz
dCBpcyBvdmVyIGEgdkV0aCBwYWlyIGFuZCBhbGwgZnJhbWVzIGFyZSBsb2NhbGx5IG9yaWdpbmF0
ZWQgYnkgaXBlcmYuCj4+Cj4+IEluIHByYWN0aWNlIC0gSSB3aWxsIHJldGVzdCBhbmQgcG9zdCB0
aGUgcmVzdWx0cyBzb21ldGltZXMgbGF0ZXIgdG9kYXkuCj4+Cj4+IEJyZ2RzLAo+IAo+IAo+IG9r
IGlmIGl0J3MgdmV0aCB0aGVuIHlvdSBuZWVkIHRvIGFkZCBhIHNpbWlsYXIgcHJpbnRrIHBhdGNo
IHRvIHZldGgKPiBhbmQgcmUtcnVuIHRvIHNlZSB3aGVyZSBkb2VzIGl0IGNvbWUgZnJvbSBvcmln
aW5hbGx5LgoKTW9zdCBsaWtlbHkgLSBhbiBpcGVyZiBydW5uaW5nIG9uIGxvY2FsaG9zdCA6KSBJ
dCBpcyBnZW5lcmF0aW5nIHRoZSB0cmFmZmljLgoKVGhhbmtzLCBJIHdpbGwgYWRkIGJvdGggcHJp
bnRrcyBhbmQgcmUtdGVzdCBBU0FQLgoKCj4gCj4+Pgo+Pj4KPj4+Cj4+Pj4gLS0gCj4+Pj4gQW50
b24gUi4gSXZhbm92Cj4+Pj4gQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBF
bmdsYW5kLiBDb21wYW55IE51bWJlciAxMDI3MzY2MQo+Pj4+IGh0dHBzOi8vd3d3LmNhbWJyaWRn
ZWdyZXlzLmNvbS8KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IGxpbnV4LXVtIG1haWxpbmcgbGlzdAo+Pj4gbGludXgtdW1AbGlz
dHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC11bQo+Pj4KPj4KPj4gLS0gCj4+IEFudG9uIFIuIEl2YW5vdgo+PiBDYW1i
cmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENvbXBhbnkgTnVtYmVy
IDEwMjczNjYxCj4+IGh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LXVtIG1h
aWxpbmcgbGlzdAo+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCj4gCgotLSAKQW50b24gUi4g
SXZhbm92CkNhbWJyaWRnZWdyZXlzIExpbWl0ZWQuIFJlZ2lzdGVyZWQgaW4gRW5nbGFuZC4gQ29t
cGFueSBOdW1iZXIgMTAyNzM2NjEKaHR0cHM6Ly93d3cuY2FtYnJpZGdlZ3JleXMuY29tLwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFp
bGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
