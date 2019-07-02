Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DA75D2D5
	for <lists+linux-um@lfdr.de>; Tue,  2 Jul 2019 17:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B3dkWzyKvqgpJYKbX5GZAoWzaOQWqKRBDJH3wFxHvxQ=; b=UUNlyHQ8PHpelnIReK8u7Tklc
	Sci3fu8Gnv0deLNBqkamIsyLpAF5GBLUJr13M+RrhL4SjA9hHnJYVHCGgcKX4w0HZ0ViMFPl7zn+p
	vwkERurbN8jvq0ZB4o2dXPaUO6ENdv8xXZHd33Wrzlm/8haMltENjcBorTBXM3nhrjDvY7Rm0MxeX
	0u278EL3RunQ9Q0ihG5TEdvBdDnrcXCJE7/MIbD2jP5vroCQEwZvSR7qMWinxv6RxKmBhGmq0kb5c
	AsRUzCrqcnpP/mLRXkz2YMm7P+qUt+YAPFwtD1NPOlQtv1y2jh5tA9P97iB0vtscM18eovIdc7tEp
	mgPXx4Xiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKhR-0000nR-UT; Tue, 02 Jul 2019 15:28:05 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKhN-0000li-Ln
 for linux-um@lists.infradead.org; Tue, 02 Jul 2019 15:28:04 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hiK3v-0006sv-PN; Tue, 02 Jul 2019 14:47:15 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hiK3t-000517-8t; Tue, 02 Jul 2019 15:47:15 +0100
Subject: Re: [PATCH] User mode linux bump maximum MTU tuntap interface [RESAND]
To: Richard Weinberger <richard.weinberger@gmail.com>,
 =?UTF-8?B?0JDQu9C10LrRgdC10Lk=?= <ne-vlezay80@yandex.ru>
References: <54cee375-f1c3-a2b3-ea89-919b0af60433@yandex.ru>
 <fc526c78-2d3f-90ca-8317-a89eb653cbf9@yandex.ru>
 <CAFLxGvytDC1TFdT0m9vvijz_93B8TziWURcR-3mskWB-7TzFag@mail.gmail.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <86215743-4340-7d54-6657-19546de2377a@kot-begemot.co.uk>
Date: Tue, 2 Jul 2019 15:47:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAFLxGvytDC1TFdT0m9vvijz_93B8TziWURcR-3mskWB-7TzFag@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_082801_839597_181445CC 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-um@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAwMi8wNy8yMDE5IDE1OjQwLCBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6Cj4gQ0MnaW5n
IHVtIGZvbGtzLgo+IAo+IE9uIFR1ZSwgSnVsIDIsIDIwMTkgYXQgMzowMSBQTSDQkNC70LXQutGB
0LXQuSA8bmUtdmxlemF5ODBAeWFuZGV4LnJ1PiB3cm90ZToKPj4KPj4gSGVsbG8sIHRoZSBwYXJh
bWV0ZXIgIEVUSF9NQVhfUEFDS0VUIGxpbWl0ZWQgdG8gMTUwMCBieXRlcyBpcyB0aGUgbm90Cj4+
IHN1cHBvcnQganVtYm8gZnJhbWVzLgo+Pgo+PiBUaGlzIHBhdGNoIGNoYW5nZSBFVEhfTUFYX1BB
Q0tFVCB0aGUgNjU1MzUgYnl0ZXMgdG8ganVtYm8gZnJhbWUgc3VwcG9ydAo+PiB3aXRoIHVzZXIg
bW9kZSBsaW51eCB0dW50YXAgZHJpdmVyLgo+Pgo+Pgo+PiBQQVRDSDoKPj4KPj4gLS0tLS0tLS0t
LS0tLS0tLS0tLQo+Pgo+Pgo+PiBkaWZmIC1ydU5QIC4uL2xpbnV4X29yaWcvbGludXgtNS4xL2Fy
Y2gvdW0vaW5jbHVkZS9zaGFyZWQvbmV0X3VzZXIuaAo+PiAuL2FyY2gvdW0vaW5jbHVkZS9zaGFy
ZWQvbmV0X3VzZXIuaAo+PiAtLS0gYS9hcmNoL3VtL2luY2x1ZGUvc2hhcmVkL25ldF91c2VyLmgg
ICAgMjAxOS0wNS0wNiAwMDo0Mjo1OC4wMDAwMDAwMDAKPj4gKzAwMDAKPj4gKysrIGIvYXJjaC91
bS9pbmNsdWRlL3NoYXJlZC9uZXRfdXNlci5oICAgIDIwMTktMDctMDIgMDc6MTQ6MTMuNTkzMzMz
MzU2Cj4+ICswMDAwCj4+IEBAIC05LDcgKzksNyBAQAo+PiAgICNkZWZpbmUgRVRIX0FERFJfTEVO
ICg2KQo+PiAgICNkZWZpbmUgRVRIX0hFQURFUl9FVEhFUlRBUCAoMTYpCj4+ICAgI2RlZmluZSBF
VEhfSEVBREVSX09USEVSICgyNikgLyogMTQgZm9yIGV0aGVybmV0ICsgVkxBTiArIE1QTFMgZm9y
Cj4+IGNyYXp5IHBlb3BsZSAqLwo+PiAtI2RlZmluZSBFVEhfTUFYX1BBQ0tFVCAoMTUwMCkKPj4g
KyNkZWZpbmUgRVRIX01BWF9QQUNLRVQgKDY1NTM1KQo+Pgo+PiAgICNkZWZpbmUgVU1MX05FVF9W
RVJTSU9OICg0KQo+Pgo+PiAtLS0tLS0tLS0tLS0tLS0tLS0tCj4+Cj4+Cj4gCj4gCgpUaGUgdmVj
dG9yIHZlcnNpb24gZm9yIHRhcCBhbHJlYWR5IGFsbG93cyBtdHUgPiAxNTAwLiBJdCBkb2VzIG5v
dCBoYXZlIGEgCmNoZWNrIHRvIGxpbWl0IGl0IHRvIDY1NTM1IG1heCB0aG91Z2ggYW5kIGl0IHNo
b3VsZC4KCkkgd2lsbCBhZGQgdGhpcyBvbmUgdG8gdGhlIHF1ZXVlIG9mIHN0dWZmIGZvciB0aGUg
bmV0d29yayBkcml2ZXJzLiBJTUhPIAp3ZSBzaG91bGQgc3RhcnQgbWlncmF0aW5nIHNvbWUgb2Yg
dGhlIG9sZGVyIG9uZXMgdG8gdmVjdG9yIElPLgoKLS0gCkFudG9uIFIuIEl2YW5vdgpodHRwczov
L3d3dy5rb3QtYmVnZW1vdC5jby51ay8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtdW0K
